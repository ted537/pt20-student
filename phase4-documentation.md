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

## Changes specific to phase 4 specifications

**Please use this convention when explaining changes**
```
Where - what file and rule
How - What was included, include code snippet if appropriate
Why - To match specifications
```

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
