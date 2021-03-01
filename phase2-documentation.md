# Phase 2 Documentation

## Additional changes to match phase 1 specifications
Modified `scan.ssl` in the scan rule
* Added functionality to recognize `!=` as pNotEquals
and removed the recognition of `<>` as pNotEquals
* This change was required as specified in the phase 1 specifications

Modified `scan.ssl` in the scan rule
* Added functionality to recognize `<>` as pLess pGreater
* This change was required as `<>` no longer represents pNotEquals

## Changes specific to the phase 2 specification
Added semantic tokens in `parser.ssl` for translation from 'p' tokens
from `scan.ssl` to 's' tokens
* In the output section of `parser.ssl`, all of the new 's' tokens were added
* As a result of these changes, `parser.pt` needed to be updated with 
the new tokens from `parser.def` after running `make` for the parser
* This change was necessary to match the Like language specifications,
and the provide the correct token stream for the next phase
* **Note**: `include` was added in `parser.pt` to automatically update
with `parser.def`

The Block rule in `parser.ssl` was modified to accept any order of
declarations or statements unlike in PT Pascal
* To accomplish this functionality, the Block rule is simply a loop
which every loop accepts a new declaration or statement
```
Block:
        .sBegin
        {[
            | pAlmostEndFile: >
            | 'end': ';' >
            | *: @DeclarationOrStatement
        ]}
        .sEnd;
```
where `@DeclarationOrStatement` is a choice of any declaration or statement
* This change reflects the new logic within the Like language where
declarations and statements can be in any order within the file,
unlike with PT Pascal

In `parser.ssl` in the `DeclarationOrStatement` rule:
* Added new rule to handle any order of declarations or statements within
a Like program
* A choice statement determines where the line is a declaration or 
statement and redirects to the appropriate rule within the parser
```
DeclarationOrStatement:
        [
            | pVal : @ConstantDefinitions
            | pVar : @VariableDeclaration
            | pIdentifier: @AssignmentOrCallStmtOrVariableDeclaration
            | pPkg: @Package
            | 'fun': @Procedure
            | 'public': @Public
            | pIf: @IfStatement
            | pRepeat: @RepeatStatement
            | pChoose: @ChooseStatement
            | *:
                ?
                #eUnexpectedToken
        ]
        ;
```
* The addition of this rule allows for the parser to accept any order or
declarations and statements, which is new to the Like language

In `parser.ssl` in the `ConstantDefinitions` rule:
* Added logic for Like `val` which is a run-time constant. These constants
can also be in a list separated by commas
* To achieve this logic, 2 new rules were added
```
ConstantDefinition:
    .sConst @identifier '=' @ConstantValue;

ConstantDefinitions :
        @ConstantDefinition
        {[
            | ',': @ConstantDefinition % comma separates more definitions
            | ';': >
            | *: #eUnexpectedToken
        ]};
```
* These changes reflect the Like specifications and the new way of handling
constant defintions using commas instead of semi-colons

In `parser.ssl` in the `VariableDeclaration` rule:
* Added new logic for variable declarations within Like
* Variables are handled using the new `VariableDeclaration` rule
```
VariableDeclaration :
        % Accept only one variable declaration
        .sVar @identifier @ValueorLike  ';';
```
* As a result of these changes, a new function `ValueorLike` was introduced
* **NOTE**: This new way of defining variables and their type removed the
need for PT Pascal's `TypeDefinition, TypeBody` and `SimpleType` rules and
thus they were removed from `parser.ssl`

In `parser.ssl` in the `ValueorLike` rule:
* A new `ValueorLike` rule was added to handle variable declarations in Like
* `ValueorLike` determines if a variable is being declared as a value, or a
new style of declaration called a like clause, which is new to Like
```
ValueorLike :
        [
            | '=': @Expression
            | '[': .sArray @ConstantValue ']' ':' @LikeClause
            | ':': @LikeClause
        ];

LikeClause:
    @OptionalFile @like @ConstantValue;

```
where `@OptionalFile` simply adds `.sFile` to the token stream, and `@like`
adds `.sLike` to the token stream
* These changes were required to align with the new variable declarations
using 'like clauses' and the potential for variables to be declared as
arrays (`.sArray`) or files (`.sFile`)

In `parser.ssl` in the `Public` rule:
* New to Like, variables, constants, and functions can be declared as
Public. To handle this, a new `Public` rule was added to the parser which
adds an `.sPublic` token to the declaration
* If `public` is present in the variable, constant, or function
definition, the `Public` rule is called
```
Public:
    [
        | 'val':
            @PublicConstantDefinitions
        | 'var':
            @PublicVariableDeclaration
        | 'fun':
            @PublicProcedure
    ];

```
where the `Public` variant rules are called which are identical to their
non-public counterparts, with the addition of the `.sPublic` token
* This addition was needed to allow for the new `public` variant in Like

In `parser.ssl` in the `ChooseStatement` rule:
* The `ChooseStatement` rule was added to handle `choose` statements,
which are a lot like PT Pascal's `case` statements.
* This new rule allows for the definition of a `choose` statements with
alternatives and a default `else` alternative
```
ChooseStatement :
        .sCaseStmt
        @Expression
        .sExpnEnd
        'of'
        'when' @WhenStatement
        {[
            | 'when': @WhenStatement
            | *: >
        ]}
        .sCaseEnd
        [
            | 'else':
                .sCaseElse
                @ChooseBlock
            | *:
        ]
        'end' ';';

WhenStatement: % starts after 'when' in choose
        @CommaSeparatedConstants
        'then'
        .sLabelEnd
        % allow any number of declarations or statements
        @ChooseBlock;
```
where `@CommaSeparatedConstants` simply allows a list of comma separated
constants
* This rule was a modified version of PT Pascal's case statement rule and
was required as per the Like specifications.
* **NOTE**: A new `ChoiceBlock` rule had to be added to handle any number
of declarations and statements, much like the Block rule. The `ChoiceBlock`
rule is as follows
```
ChooseBlock :
    .sBegin
    {[
        | pVal : @ConstantDefinitions
        | pVar : @VariableDeclaration
        | pIdentifier: @AssignmentOrCallStmtOrVariableDeclaration
        | pPkg: @Package
        | 'fun': @Procedure
        | 'public': @Public
        | pIf: @IfStatement
        | pRepeat: @RepeatStatement
        | pChoose: @ChooseStatement
        | *:
            >
    ]}
    .sEnd;
```