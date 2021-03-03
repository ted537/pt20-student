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
        @DeclarationsAndStatements
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
DeclarationsAndStatements:
        {[ @DeclarationOrStatement
            | cConsumed:
            | cDidNotConsume: >
        ]};
        
DeclarationOrStatement >> ConsumeStatus:
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
            | ';': .sNullStmt
            | *: >> cDidNotConsume
        ]
        >> cConsumed
        ;
```
* The addition of this rule allows for the parser to accept any order or
declarations and statements, which is new to the Like language
* There is also the addition of a consumed status to make execution clearer
  * The consumed type flag is as follows
```
type ConsumeStatus:
        cConsumed
        cDidNotConsume;
```

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

In `parser.ssl` in the `Procedure` rule:
* Added new logic to handle Like function declarations
* All function declarations now handled using the `Procedure` rule
```
Procedure:
    .sProcedure 
    @identifier @OptionalProcedureParameters 'is' .sParmEnd @Block;
```
* This new rule achieves the changes between PT Pascal procedures and Like functions

In `parser.ssl` in the `PublicProcedure` rule: 
* Like adds functionality for public routines/functions
* The new rule `PublicProcedure` handles this special case of public function declarations
```
PublicProcedure:
    .sProcedure 
    @identifier .sPublic @OptionalProcedureParameters 'is' .sParmEnd @Block;
```
* Note for both `PublicProcedure` and `Procedure` the `OptionalProcedureParameters` rule is unchanged. This rule handles the parameter declaration for the routines.

In `parser.ssl` in the `SimpleExpression` rule:
* New cases are added to `SimpleExpressions` to handle two of the new string operations, concatenate ('|') and repeat ('||'), added by Like
```
SimpleExpression :
        [
            | '+':
                @Term
            | '-':
                @Term  .sNegate
            | *:
                @Term
        ]
        {[
            | '+':
                @Term  .sAdd
            | '-':
                @Term  .sSubtract
            | 'or':
                .sInfixOr  @Term  .sOr
            % Concatenate strings
            | '|':
                @Term .sConcatenate
            % Repeat strings
            | pDoubleOrBar:
                @Term .sRepeatString
            | *:
                >
        ]};
```
* Both of these operations have precedence equal to that of integer addition as specified in the Like specifications document

In `parser.ssl` in the `Term` rule:
* New Like string operation substring ('/') handled through `Term` rule case
* Colon in substring operation distinguishes between division and substring
* This distinction is done in `DivideOrSubstring` rule
```
Term :
        @Factor
        {[
            | '*':
                @Factor  .sMultiply
            | '/': @DivideOrSubstring
            | '%':
                @Factor  .sModulus
            | 'and':
                .sInfixAnd  @Factor  .sAnd
            | *:
                >
        ]};
```
* New rule to handle distinction between division and substring
```
DivideOrSubstring:
        @Factor
        [
            | ':': @Factor .sSubstring
            | *: .sDivide
        ];
```
In `parser.ssl` in the `Factor` rule: 
* Like adds a new string operator length ('#')
* Added case in factor to handle this operator (similar to how not is handled)
```
Factor :
        [
            | pIdentifier:
                .sIdentifier
                @IdentifierExtension
            | pInteger:
                .sInteger
            | '(':
                @Expression  ')'
            | 'not':
                @Factor
                .sNot
            | pStringLiteral:
                .sStringLiteral
            % Special character for the string length
            | pHash: 
                @Factor
                .sLength
            | 'file':
                .sFile '(' @Expression ')'
                .sExpnEnd
        ];
```

In `parser.ssl` in the `Package` rule:
* New functionality in Like for creating packages
```
Package:
    .sPackage @identifier 'is' @Block 'end' ';';
```

In `parser.ssl` in the `AssignmentOrCallStmtOrVariableDeclaration` rule:
* Like modifies the PT Pascal assignment symbol from `:=` to `=`
* New to Like is short form assignment operators such as incremental assignment, decramental assignment, multiplicative assignment, divisive assignment, and modular assignment
```
AssignmentOrCallStmtOrVariableDeclaration: 
    [
        | '=': @AssignEqual
        | '+=': @AssignAdd
        | '-=': @AssignSubtract
        | '*=': @AssignMultiply
        | '/=': @AssignDivide
        | '%=': @AssignModulus
        | '[': @SubscriptAssign
        | '(': @CallStatement
        | ';': @CallStatementNoParams
        | *: #eUnexpectedToken
    ];
```

In `parser.ssl` in the `AssignEqual` rule:
* Implementation for the `=` assignment operator did not change from that of `:=` in PT Pascal, was simply made into its own rule to be called
```
AssignEqual:
        .sAssignmentStmt .sIdentifier 
        @Expression .sExpnEnd 
        ';';
```

In `parser.ssl` in the `AssignAdd` rule:
* New functionality in Like for short form of incremental assignment
```
AssignAdd:
        .sAssignmentStmt .sIdentifier .sIdentifier 
        @Expression .sAdd .sExpnEnd
        ';';
```
* Short form assignment (e.g., `i += 10`) is interpreted by the parser as its respective long form assignment (i.e., `i = i + 10`)

In `parser.ssl` in the `AssignSubtract` rule:
* New functionality in Like for short form decrimental assignment
```
AssignSubtract:
        .sAssignmentStmt .sIdentifier .sIdentifier 
        @Expression .sSubtract .sExpnEnd
        ';';
```
* Short for assignment (e.g., `i -= 10`) is interpreted by the parser as its respective long form assignment (i.e., `i = i - 10`)

In `parser.ssl` in the `AssignMultiply` rule:
* New functionality in Like for short form multiplicative assignment
```
AssignMultiply:
        .sAssignmentStmt .sIdentifier .sIdentifier 
        @Expression .sMultiply .sExpnEnd
        ';';
```
* Short form assignment (e.g., `i *= 10`) is interpreted by the parser as its respective long form assignment (i.e., `i = i * 10`)

In `parser.ssl` in the `AssignDivide` rule:
* New functionality in Like for short form divisive assignment
```
AssignDivide:
        .sAssignmentStmt .sIdentifier .sIdentifier 
        @Expression .sDivide .sExpnEnd
        ';';
```
* Short form assignment (e.g., `i /= 10`) is interpreted by the parser as its respective long form assignment (i.e., `i = i / 10`)

In `parser.ssl` in the `AssignModulus` rule:
* New functionality in Like for short form modular assignment
```
AssignModulus:
        .sAssignmentStmt .sIdentifier .sIdentifier 
        @Expression .sModulus .sExpnEnd
        ';';
```
* Short form assignment (e.g., `i %= 10`) is interpreted by the parser as its respective long form assignment (i.e., `i = i % 10`)

In `parser.ssl` in the `SubscriptAssign` rule:
* Only modification from the previous PT Pascal implementation was to reflect changes made to the assignment symbol in Like
* Changed assignment symbol from PT Pascals' `:=` to Like's `=`
```
SubscriptAssign: % starts after '['
        .sAssignmentStmt .sIdentifier
        .sSubscript @Expression .sExpnEnd ']'
        '='
        @Expression .sExpnEnd ';'
        ;
```
