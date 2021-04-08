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

## Variables
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

## Procedure Parameters with Like Clauses
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

## Packages
The `PackageDefinition` in `semantic.ssl`
* Handling the declaration packages functionality (new to Like).
* Specification of new `syPackage` type  in `SymbolKind`
* Loosely following the structure of `ProcedureDefinition` with the exclusion of certain unnecessary calls/mechanisms (i.e., `tSkipProc`, `tProcedureEnd`)
* Removal of `ForwardBranch` functionality as it is not required within `packages`
* Replacement of `oSymbolTblPopScope` and `oSymbolTblPreserveParameters` with new `oSymbolTblMergePublicScope` mechanism
```
PackageDefinition :
        sIdentifier  oSymbolStkPushLocalIdentifier	% package name
        [ oSymbolStkChooseKind
            | syUndefined:
            | syExternal:
                % Packages should have no parameters, simply access to those declared as public
                #eExternaldeclare
            | *:
                #eMultiplyDefined
                % New definition obsures old one
        ]
        % Package definitions are much like Procedure definitions except there is no need for tskipProc or tProcedureEnd

        oSymbolStkSetKind(syPackage)
        oValuePushCodeAddress
	
        oSymbolStkEnterValue
        oValuePop
	
        oTypeStkPush(tpNull)
        oTypeStkSetRecursionFlag(yes)
        oTypeTblEnter
	
        oSymbolStkEnterTypeReference
        oSymbolTblEnter

        oSymbolTblPushScope	% Package scope

        @Block

        oTypeStkSetRecursionFlag(no)
        oTypeTblUpdate
        oTypeStkPop
        oSymbolTblUpdate
        oSymbolStkPop

        oSymbolTblMergePublicScope;
```

The `oSymbolStkSetPublicFlag` mechanism in `semantic.pt`
* The addition of a new field within the Symbol Stack that accepts `Boolean` values to indicate whether a respective symbol is `Public` or not.
* Required modification to both `SymbolStk` and `SymbolTbl` such that their instantiation includes said `symbolStkPublicFlag` and `symbolTblPublicFlag` fields.
```
{ Symbol Stack }
symbolStkPublicFlag:    array [1 .. symbolStkSize] of Boolean;
symbolStkIdentTblRef:   array [1 .. symbolStkSize] of integer;
symbolStkSymbolTblRef:  array [1 .. symbolStkSize] of SymbolTblReference;
symbolStkKind:          array [1 .. symbolStkSize] of SymbolKinds;
symbolStkValue:         array [1 .. symbolStkSize] of integer;
symbolStkTypeTblLink:   array [1 .. symbolStkSize] of TypeTblReference;
symbolStkTop:  SymbolStkReference;      { initially 0 }
```
```
{ Symbol Table }
symbolTblPublicFlag:    array [1 .. symbolTblSize] of Boolean;
symbolTblIdentLink:     array [1 .. symbolTblSize] of integer;
symbolTblKind:          array [1 .. symbolTblSize] of SymbolKinds;
symbolTblValue:         array [1 .. symbolTblSize] of integer;
symbolTblTypeTblLink:   array [1 .. symbolTblSize] of TypeTblReference;
symbolTblTop:  SymbolTblReference;      { initially 0 }
```
* Implementation of new `oSymbolStkSetPublicFlag` mechanism that sets the `symbolStkPublicFlag` field of the top element of the `SymbolStk` to `true`
```
oSymbolStkSetPublicFlag:
    { Set the top entry's public flag of the stack to true. }
    symbolStkPublicFlag[symbolStkTop] := true;
```

The `oSymbolTblMergePublicScope` mechanism in `semantic.pt`
* The creation of a new semantic mechanism `oSymbolTblMergePublicScope` which is similar to the `oSymbolTblPopScope` mechanism though it keeps all Symbols listed as `Public` when exiting a scope (particularly a `Package`)
* Removes all symbols local to the scope from visibility while keeping the symbols listed as `Public`
```
		oSymbolTblMergePublicScope:
                        { Pop the lexical level stack, remove all non Public entries from the type table,
                          remove non Public entries but leave parameter entries on the symbol stack. }
			
                        begin
                            Assert((lexicLevelStackTop >= 1), assert31);
                            i := symbolTblTop;
                            { Set the identifier table pointer to the identifier entry in the 
                              closest enclosing scope if there is one. }
                            while i > symbolTblDisplay[lexicLevelStackTop] do
                                begin
                                    link := symbolTblIdentLink[i];
					    
                                    if not symbolTblPublicFlag[i] then
                                        begin
                                            if link <> null then 
                                                { This is not a dummy identifier generated by 
                                                  the parser's syntax error recovery procedure. }
                                                begin
                                                    while link > 0 do
                                                        link := symbolTblIdentLink[link];
                                                    identSymbolTblRef[-link] := symbolTblIdentLink[i];
                                                end;
                                        end;
                                    i := i - 1
                                end;
                            lexicLevelStackTop := lexiclevelStacktop - 1;
                        end;
```

## Strings

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


## String Operations
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

