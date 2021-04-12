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
