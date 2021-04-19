# Phase 4 Documentation

## Additional Changes to match phase 3 specifications
Added additional semantic operations to `VariableDeclarations` to ensure
correct stack state with declared variable for inital value case.
* In `VariableDeclarations` in `sInitialValue` case.
* The added semantic operations can be seen below:
```
oValuePushSymbol
oEmitValue
oValuePop
```
* These changes were necessary for initial value declarations to work for
Like variables

In `semantic.ssl` in the `IndexType` rule:
* Fixed a mistake from Phase 3 wherein the type bounds were entered to the wrong type stack entry

## Changes specific to phase 4 specifications

In `coder.ssl` in the input section
* Added in new t-code instructions from the semantic phase
  * For example:
  ```
    tConcatenate
    tRepeatString
    tSubstring
    tLength
  ```
* This change was necessary to implement the new Like language specifications
and accept the new tCodes
* **Note**: `include` was added to `coder.pt` to automatically update with
`coder.def`

In `coder.ssl`:
* added new trap codes required for new Like string operations
  * For example:
  ```
    trAssignString
    trLength
  ```
* This change was necessary to implement new Like language string operations

In `coder.ssl` in `type Integer` specifically `DataKinds`
* added `string` kind with value 3
* This change was necessary to implement strings in Like which are new

In `coder.ssl` in the `Block` rule:
* Added choices for statements and declarations in the block rule loop
* The choices were copied from the old `Statements` rule and the call
to `Statements` after the `Block` loop was removed:
```
        | tAssignBegin:
            @AssignStmt
        | tCallBegin:
            @CallStmt
        | tIfBegin:
            @IfStmt
        | tWhileBegin:
            @WhileStmt
        | tRepeatBegin:
            @RepeatStmt
        | tCaseBegin:
            @CaseStmt
        | tWriteBegin:
            @WriteProc
        | tReadBegin:
            @ReadProc
        | tTrapBegin:
            @TrapStmt
```
* This change was needed as Like makes no distinction between declarations
and Statements and allows them to be in any order in the code
* **Note**: as a result of this change, the `Statements` rule is no longer used to
accept statements but instead redirects to the `block` rule

In `coder.ssl` in the `Block` rule:
* Added a choice to accept `tInitialValue`
* This choice is if a variable is declared with an initial value and the
value must be assigned to that variable. It can be an integer, char, boolean
```
        | tInitialValue:
            @OperandPushExpression % accept initial value expression
            tInitEnd % end of expression
            tLiteralAddress
            oOperandPushVariable
            [
                | tStoreInteger:
                    oOperandSetLength(word)
                    oOperandSwap
                    @OperandAssignIntegerPopPop
                | tStoreChar:
                    oOperandSetLength(byte)
                    oOperandSwap
                    @OperandAssignCharPopPop
                | tStoreBoolean:
                    oOperandSetLength(byte)
                    oOperandSwap
                    @OperandAssignBooleanPopPop
            ]
```
* This change was required to implement Like variable initial values

In `coder.ssl` in the `EmitDefaultCaseAbort` rule:
* Added a choice selector to check for an `else` clause
* If the else clause exists, `Statements` is called to handle the else
case. If no else is found, the original rule is executed
```
        [
            | tCaseElse:
                @Statements
                tCaseElseEnd                        %       jmp    mN
                oEmitCaseMergeBranch
            | *:
                oOperandPushMode(mTrap)
                oOperandSetValue(trCaseAbort)
                oEmitSingle(iCall)                  %       call  caseAbort
                oOperandPop
        ];
```
* This change was required as a default `else` case is new to Like and 
it had to be handled

In `coder.ssl` in the `OperandSubscriptCharPop` rule:
* Since strings are always passed by reference, removed manifest folding
```
OperandSubscriptCharPop:
    % no manifest folding
    @OperandSubscriptNonManifestCharPop
    oOperandSetLength(byte);
```

## Strings
Removal of handling for `tLiteralChar` and `tLiteralString` from both `coder.ssl` and `coder.pt`
Extraction of handling for `tFetchChar` into its own case within the `OperandPushVariable` rule in `coder.ssl`
```
    [
        | tFetchInteger:
        | tFetchBoolean:
            oOperandSetLength(byte)
        | tFetchChar:
            oOperandSetLength(string)
        | *: 
            % Value is not to be loaded
    ] ;
```

Functionality for checking result size/length of subscript type in `OperandCheckedSubscriptNonManifestIntegerPop` rule in `coder.ssl`
```
    [ oOperandChooseLength
        | word, byte:
            oOperandSetValue(two)               % ... arraydesc, %T, 2
        | string:
            oOperandSetValue(eight)
    ]
````

Modification of `OperandForceIntoTemp` rule in `coder.ssl`
```
        | *:
            [ oOperandChooseLength
                | byte:
                    @OperandPushTempByte
                | word:
                    @OperandPushTempWord
                | string:
                    @OperandForceAddressIntoTemp
                    >>
            ]
            oOperandSwap
            oEmitDouble(iMov)   % mov(b) operand, dN
            @OperandPopAndFreeTemp
            oOperandSetMode(mTemp)
```

Modification of `OperandForceToStack` rule in `coder.ssl`
```
    [ oOperandChooseLength
        | byte:
                % can't push a byte on x86
                @OperandForceIntoTemp
                oOperandSetLength(word)
        | word:
        | string:
                @OperandForceAddressIntoTemp
    ]
```

Implemented `EmitString` rule in `coder.ssl`
```
EmitString:
    % Emit string literal to data area
    oEmitNone(iData)                    %       .data
    tStringData
    oEmitString                         % sNNN: .asciz  "SSSSS"
    oEmitNone(iText)                    %       .text
    ;
```

Modificaiton of `tSkipString` case within `OperandPushExpression` to call newly created `EmitString` rule

Modification of `OperandAssignCharPopPop` rule in `coder.ssl`
```
OperandAssignCharPopPop:
    % Generate code to assign the right (top) operand's value to
    % the left (second) operand and pop both operands.
    % get the string on the stack
    oOperandSetLength(string)
    @OperandForceToStack
    oOperandPop
    oOperandSetLength(string)
    @OperandForceToStack
    oOperandPop
    % emit assignment trap
    oOperandPushMode(mTrap)
    oOperandSetValue(trAssignStr)
    oEmitSingle(iCall)
    oOperandPop;
```

Additon of `stringSize` within `coder.pt`
Implement proper scaling of string type subscripts in the `coder.pt`
```
    if operandStkLength[operandStkTop-1] = string then
        subscript := subscript * stringSize;
```

## String Operations
Implement string operations: Length, Repeat, Concatenate and Substring

New Trap codes are added in declarations to handle the string operations
```
        trConcatenate=103
        trSubstring=104
        trLength=105
        trStringEq=107
        trRepeatString=110
```

In `coder.ssl` in the `OperandPushOperand` rule:
* All string operations added as cases
```
        | tLength:
            @OperandLengthPop
        | tStringEq:
            @OperandStrEqPopPop
        | tSubstring:
            @OperandSubstrPopPopPop
        | tConcatenate:
            @OperandConcatenatePopPop
        | tRepeatString:
            @OperandRepeatStringPop
```
* Each of these links to a seperate function that will handle the operation

In `coder.ssl` in the new `TempToScratch` rule:
```
TempToScratch:
    oOperandPushMode(mScratchReg1)
    oOperandSetLength(word)
    oOperandPushTemp
    oEmitDouble(iMov)
    oOperandPop
    oOperandPop;
```
and the new `ScratchToTemp` rule:
```
ScratchToTemp:
    @OperandPushTempWord
    oOperandPushMode(mScratchReg1)
    oEmitDouble(iMov)
    oOperandPop;
```
* These rules are used in all substring operations since they require that the address of the string remain in the temp register so the temp registers are not cleared

In`coder.ssl` in the new `OperandLengthPop` rule:
```
OperandLengthPop:
    @SaveTempRegsToStack
    % move string address from operand stack to runtime stack
    @OperandForceToStack
    oOperandPop 
    % call trap
    oOperandPushMode(mTrap)
    oOperandSetValue(trLength)
    oEmitSingle(iCall)
    oOperandPop
    % pop argument
    oOperandPushMode(mStackReg)
    oOperandSetLength(word)
    oOperandPushMode(mManifest)
    oOperandSetLength(word)
    oOperandSetValue(four)
    oEmitDouble(iAdd)
    oOperandPop
    oOperandPop

    @TemptoScratch
    @RestoreTempRegsFromStack
    @ScratchToTemp
    ;
```
* Support added to handle the string length (#) operation

In `coder.ssl` in the new `OperandStrEqPopPop` rule:
```
OperandStrEqPopPop:
    @SaveTempRegsToStack
    % move string address from operand stack to runtime stack
    @OperandForceToStack
    oOperandPop
    % move string address from operand stack to runtime stack
    @OperandForceToStack
    oOperandPop
    % call trap
    oOperandPushMode(mTrap)
    oOperandSetValue(trStringEq)
    oEmitSingle(iCall)
    oOperandPop
    % pop argument
    oOperandPushMode(mStackReg)
    oOperandSetLength(word)
    oOperandPushMode(mManifest)
    oOperandSetLength(word)
    oOperandSetValue(four)
    oEmitDouble(iAdd)
    oOperandPop
    oOperandPop
    % move to scratch register
    oOperandPushMode(mScratchReg1)
    oOperandSetLength(word)
    oOperandPushTemp
    oEmitDouble(iMov)
    oOperandPop
    oOperandPop
    
    @TempToScratch
    @RestoreTempRegsFromStack
    @ScratchToTemp
    ;
```
* Support added to handle the boolean equality of strings

In `coder.ssl` in the new `OperandSubstrPopPopPop` rule:
```
OperandSubstrPopPopPop:
    @SaveTempRegsToStack
    % pop args from operand stack to runtime stack
    @OperandForceToStack
    oOperandPop
    @OperandForceToStack
    oOperandPop
    @OperandForceToStack
    oOperandPop
    % call trap
    oOperandPushMode(mTrap)
    oOperandSetValue(trSubstring)
    oEmitSingle(iCall)
    oOperandPop
    % pop args
    oOperandPushMode(mStackReg)
    oOperandSetLength(word)
    oOperandPushMode(mManifest)
    oOperandSetLength(word)
    oOperandSetValue(twelve)
    oEmitDouble(iAdd)
    oOperandPop
    oOperandPop

    @TempToScratch
    @RestoreTempRegsFromStack
    @ScratchToTemp
    ;
```
* Support added for the new substring operation for strings

In `coder.ssl` in the new `OperandConcatenatePopPop` rule:
```
OperandConcatenatePopPop: 
    @SaveTempRegsToStack
    % First string
    @OperandForceToStack
    oOperandPop
    % Second string
    @OperandForceToStack
    oOperandPop
    
    % Concatenate String
    oOperandPushMode(mTrap)
    oOperandSetValue(trConcatenate)
    oEmitSingle(iCall)              % call pttrap 103
    oOperandPop
    
    oOperandPushMode(mStackReg)
    oOperandSetLength(word)
    oOperandPushMode(mManifest)
    oOperandSetLength(word)
    oOperandSetValue(eight)
    oEmitDouble(iAdd)               % addl $8, %esp
    oOperandPop
    oOperandPop
    
    @TempToScratch
    @RestoreTempRegsFromStack
    @ScratchToTemp
    ;
```
* Added support for new string concatenate operation

In `coder.ssl` in the new `OperandRepeatStringPop` rule:
```
OperandRepeatStringPop:
    @SaveTempRegsToStack
    % move string address from operand stack to runtime stack
    @OperandForceToStack
    oOperandPop
    @OperandForceToStack
    oOperandPop
    % call trap
    oOperandPushMode(mTrap)
    oOperandSetValue(trRepeatString)
    oEmitSingle(iCall)
    oOperandPop
    % pop arguements
    oOperandPushMode(mStackReg)
    oOperandSetLength(word)
    oOperandPushMode(mManifest)
    oOperandSetLength(word)
    oOperandSetValue(eight)
    oEmitDouble(iAdd)
    oOperandPop
    oOperandPop

    @TempToScratch
    @RestoreTempRegsFromStack
    @ScratchToTemp
    ;

```
* Added support for the new string repeat operation
