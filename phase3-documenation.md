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