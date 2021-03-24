# Phase 3 Documentation

## Additional changes to match phase 2 specifications
None required.

## Changes specific to the phase 3 specification
Added tokens in `semantic.ssl` for translation from 's' tokens
from `parser.ssl` to 't' tokens
* In the output section of `semantic.ssl`, all of the new 't' tokens were added
* As a result of these changes, `semantic.pt` needed to be updated with 
the new tokens from `semantic.def` after running `make` for the parser
* This change was necessary to match the Like language specifications,
and the provide the correct token stream for the next phase
* **Note**: `include` was added in `semantic.pt` to automatically update
with `semantic.def`

The Block rule in `semantic.ssl` was modified to accept any order of
declarations and statements unlike in PT Pascal
* Declarations and statements were merged into a single rule
that also pushes and pops the scope on the symbol stack.

```
- where (what file and rule)
- how was it modified (code snippet or describe)
- any hanges as a result
- why was this done
```

The `TypeDeclarations` rule in `semantic.ssl`:
* The rule was deleted from `semantic.ssl`
* This change was required as Like does not have explicit type
declarations and so the rule was no longer needed.

The `VariableDeclarations` rule in `semantic.ssl`:
* The for loop for this rule was removed as Like does not allow for more than
one variable declaration in a line.
* Added handling for initial values when defining variables in Like.
  * If an initial value is present, the `Expression` rule is called and the
  value is assigned to the variable using `EmitStore`
  * If no initial value is present, the standard handling of variables
  from PT Pascal is run
* Handling of initial value added to `VariableDeclarations` seen below:
```
| sInitialValue:
    .tInitialValue
    @Expression % pushes attributes to type and symbol stack
    .tInitEnd
    oSymbolStkPop % assigned value
    @EnterVariableAttributes
    .tLiteralAddress
    @EmitStore
    oTypeStkPop
    oSymbolStkPop % variable
```
* These changes reflect the new variable handling logic within Like and the
different ways a variable may be declared within Like

The `SimpleType` rule in `semantic.ssl`:
* The old `SimpleType` rule was entirely replaced with new type handling
  * `SimpleType` now must begin with `sLike` as per the Like specifications
  * Handling for all types (`integer, char ("strings"), other variable`) was
  added to the rule, linking each to its resepctive standard type if necessary
* Subrange declarations where removed entirely from `SimpleType`
* These changes were made to reflect the new method of declaring variables in Like
* **Note**: `IndexType` needed to be modified as `SimpleType` no longer handles
subranges

The `IndexType` rule in `semantic.ssl`:
* A call to `SimpleType` to handle array subranges was removed from `IndexType`
* Now, a 1 is pushed to the stack as the lower array bound, and a call to
`ConstantValue` is used to accept the array's upperbound
* The updated rule can be seen below:
```
% Accept and fill in index bounds of array type stack entry
oValuePush(one) % lower bound always 1
@ConstantValue % this will push the upper bound 
[ oTypeStkVerifyBounds
    | yes:
        oTypeStkEnterBounds
    | *:
        oValuePop
        @ValuePushValuePlusOne
        oTypeStkEnterBounds
]
oTypeStkPop % array bound type
oValuePop       % subrange upper
oValuePop;      % lower bound
```
* This change was required as `SimpleType` no longer accepts subranges

The `ProcedureParameterType` rule in `semantic.ssl`:
* All formal parameter handling was removed from `ProcedureParameterType`
and was replaced with a call to `SimpleType`
* The updated rule can be seen below:
```
        % A local procedure's formal parameters must
        % be declared using named types.
        @SimpleType
        oSymbolStkEnterTypeReference
        @AllocateVar                            % allocate formal parameter
        oSymbolTblEnter;
```
* This is required parameters are defined using a like clause

## STRINGS

The `StringLiteral` rule in `semantic.ssl`:
* Complete overhaul to handling of string literals in Like
* Remove old char and char array handling and treat all inputs as base string type
```
StringLiteral :

        oValuePushStringLength

        .tSkipString
        oFixPushForwardBranch
        oEmitNullAddress

        oTypeStkPush(tpChar)
        oTypeStkLinkToStandardType(stdChar)

        .tStringData

        oEmitValue
        oValuePop

        oValuePushChar

        oEmitString
        oFixPopForwardBranch
        oTypeTblEnter
        ;
```
* Now handle whole string data through one case.
* Code added to `operand` rule of `semantic.ssl` to complete string changes
```
   | sStringLiteral:
                oSymbolStkPush(syExpression) 
                @StringLiteral  % pushes type and value 
                oEmitNullAddress
                % Cases removed since Char type no longer used
                % All chars are strings
                .tLiteralAddress
                .tFetchChar
                oEmitValue
                oValuePop
```
The `WriteText` rule in `semantic.ssl`:
* Remove handling of old PT character arrays. Handle them now as built in string type in Like
* Change trap to new Like write string trap
```
| tpChar:
    .tTrap
    oEmitTrapKind(trWriteString)
```

The `AssignProcedure` rule in `semantic.ssl`:
* Change file name description to use the new Like string literal type
```
   | tpChar :   
       .tLiteralInteger
       % Push max size of string as length of string
       oValuePush(stringSize)
       oEmitValue
       oValuePop
       sParmEnd
```

The `oAllocateVariable` mechanism in `semantic.pt`:
* Update the size a string to be the new Like 256 instead of the original char
```
      { Replace tpChar with stringSize (256) }
      tpChar:
           dataAreaEnd := dataAreaEnd + stringSize;
```
* Also size of string in arrays
```
tpArray: 
    else if (kind = tpChar) then
         size := size * stringSize; 
```

The `oValuePushChar` mechanism in `semantic.pt`:
* Add the null value at the end of Like strings 
```
oValuePushChar:
    { Push the value of the last string token to be accepted }
    begin
         Assert((compoundToken = sStringLiteral), assert37);
			      { Push the code address rather than the string value }
         ValueStackPush(codeAreaEnd);
    end;
```
Changes to the SimpleType handling of string literals are included above in the SimpleType section


## STRING OPERATIONS
The `UnaryOperator` rule in `semantic.ssl`:
* Add support for the new string length unary operator
```
| sLength:
    .tLength
    oTypeStkPush(tpChar)
    @CompareAndSwapTypes
    oTypeStkPop
    oTypeStkPop
    oTypeStkPush(tpInteger)
    oTypeStkLinkToStandardType(stdInteger)
```
The `BinaryOperator` rule in `semantic.ssl`:
* Add handling for three new operations in Like
* Substring
* Added manual handling for type checking as the types in this operation do not match
```
| sSubstring:
     .tSubstring
     % Second integer in substring operation
     [ oTypeStkChooseKind
         | tpInteger:
         | *:
             #eTypeMismatch
      ]
      oTypeStkPop
      % First integer in substring operation
      [ oTypeStkChooseKind
          | tpInteger:
          | *:
              #eTypeMismatch
      ]
      oTypeStkPop

      % Check first string
      [ oTypeStkChooseKind
          | tpChar:
          | *:
              #eTypeMismatch
      ]
      oTypeStkPop
      
      % Push result
      oTypeStkPush(tpChar)
      oTypeStkLinkToStandardType(stdChar)
      oSymbolStkPop
      % Second pop for second symbol?
      oSymbolStkPop
      oSymbolStkSetKind(syExpression)
```
* Concatenate
```
| sConcatenate:
    .tConcatenate
    oTypeStkPush(tpChar)
    oTypeStkLinkToStandardType(stdChar)
    @CompareOperandAndResultTypes
```
* Repeat
* Added manual handling for type checking as the types in this operation do not match
```
| sRepeatString:
    .tRepeatString
    % Cannot use @CompareOperandAndResultType since operand is different result
    % Check first integer
    [ oTypeStkChooseKind
        | tpInteger:
        | *:
            #eTypeMismatch
    ]
    oTypeStkPop
    % Check first string
    [ oTypeStkChooseKind
        | tpChar:
        | *:
            #eTypeMismatch
    ]
    oTypeStkPop
    % Push result
    oTypeStkPush(tpChar)
    oTypeStkLinkToStandardType(stdChar)
    oSymbolStkPop
    oSymbolStkSetKind(syExpression)
```
* Add handling for the string equals (sEQ) and not equals (sNEQ) tokens
```
| sEq:
    [oTypeStkChooseKind
        | tpChar:
            .tStringEQ
            oTypeStkPop
            @CompareStringEquality
        | *:
            .tEq
            @CompareEqualityOperandTypes
    ]
     
| sNE:
    [oTypeStkChooseKind
        | tpChar:
            .tStringEQ
            .tNot
            oTypeStkPop
            @CompareStringEquality
        | *:
            .tNE
            @CompareEqualityOperandTypes
    ]
```
* New rule `@CompareStringEquality` added to handle string type checking
```
CompareStringEquality :
        % Compare top values for string equality
        [ oTypeStkChooseKind
                | tpChar:
                | * :
                        #eTypeMismatch
        ]
        oTypeStkPop
        oTypeStkPush(tpBoolean)
        oSymbolStkPop
        oSymbolStkSetKind(syExpression);
```
* Removed support for string greater than, less than, greater than or equal, and less than or equal
