# Phase 2 Testing Documentation

**All test cases for phase 2 are contained within the /test/parser directory**

### Testing Structure
Each test case has a .pt and a .expected file
* The .pt file is the PT Pascal program run to test a specific case
* The .expected file is the expected output from the test case as
determined by the Like program specifications.

All test cases were ran using `ssltrace` and the expected behaviour
was achieved

### How to Run the Tests
All tests can be run by running `./test.sh` in the base directory of the 
project

### Test Case Description

**/test/parser/Routines**

The test cases contained within this folder are to test the functionality
of `fun` or Like program routines.
* `routine_no_parameters.pt` tests that functions can be declared without
any parameters (`fun flag is`)
* `routine_parameters.pt` tests that functions can be declared with any
number of parameters and parameter types (`fun flag(number : like 1,...)`)
* `routine_public.pt` tests that function can be optionally declared as
public using the `public` flag before the function definition
* `old_procedures.pt` tests that the old function declaration syntax is no longer valid

**/test/parser/Strings**

The test cases contained within this folder are to test the functionality
of Like strings and string operations
* All files are clearly labelled in which specific string operation they
test. As such, a single example will be provided for clarity sake
* `Repeat_string_identifier.pt` tests that strings can be repeated n times
by using the string operation `||`
* The rest of the test cases within this folder follow a similar structure

**/test/parser/assignment**

The test cases contained within this folder are to test the functionality
of short form assignments within Like
* All files are clearly labelled in which specific short form assignment
they test. As such, a single example will be provided for clarity sake
* `modulo-equals-assignment.pt` tests that variables can be assigned a
value by taking their current value and applying the modulus operator
* the rest of the test cases within this folder follow a similar structure


**/test/parser/choose**

The test cases contained within this folder are to test the functionality
of choose statements within Like
* `choose-one-case.pt` tests that choose statements can be declared with a 
single case (i.e. `when`)
* `choose-many-case.pt` tests that choose statements can be declared with n
cases chained together (`when 1,2 then ... when 3 then ...`)
* `choose-w-else.pt` tests that choose statements can be declared with an
optional defualt or `else` case, which new to Like
* `old-case-statement.pt` verifies that the deprecated `case` keyword no longer
works and instead raises an unexpected error token

**/test/parser/constants**

The test cases contained within this folder are to test the functionality
of constants within Like
* `val.pt` tests that constants can be declared using the `val` keyword
  * this test also verifies the new delcaration method of defining n
  constants, separated by commas, unlike semicolons in Pascal
* `public-val.pt` tests that constants can optionally be declared as public
by using the `public` keyword
*  `old-const.pt` verifies that the deprecated `const` keyword no longer
works for defining constants

**test/parser/if**

The test cases contained within this folder are to test the functionality
of if and elseif statements within Like
* `if.pt` tests that if statement can exist as a single if with no else
case (`if 1==1 then ... end;`)
* `elseif.pt` tests that if statements can contain `elseif` options
(`... elseif 2==2 then ... end;`)
* `else.pt` test that if statements can have an optional default else case
with no statements to be satisfied

**test/parser/pkg**

The test cases contained within this folder are to test the functionality
of the `pkg` keyword
* `pkg.pt` tests that a package can be declared using `pkg`

**test/parser/repeat**

The test cases contained within this folder are to test the functionality
of while statements
* `while-top.pt` tests that `repeat while ...` statements can be declared
and have a similar functionality to PT Pascal's `while` statements
* `while-bottom.pt` tests that `repeat ... while` statements can be
declared and have the opposite functionality to PT Pascal's `while`

**test/parser/using**

The test cases contained within this folder are to test the functionality
of using statements at the beginning of a program
* `using-output.pt` tests that `using output;` can be declared at the top
of a Like program
* `using-input-output.pt` tests that both input and output can be declared
in a list at the top of a Like program (`using input,output;`)

**test/parser/variables**

The test cases contained within this folder are to test the functionality
of variables within Like, and the many optional additions
* `simple-var.pt` tests that variables can be declared using `var` and
being set equal to an expression (`var x = 5;`)
* `like-var.pt` tests that variables can be declared using the `like`
keyword, which defines the variable using a like clause (`var y: like x`)
* `like-array.pt` tests that variables can be optionally be declared as an
array using a like clause and defining the number of elements within an 
array (`var x[5]: like 1`)
* `like-file.pt` tests that variables can be optionally declared as a file
using the `file` keyword within the like clause
* `public-var.pt` tests that variables, like constants, can be optionally
declared as public using the `public` keyword
* `old-var.pt` verifies that the old method of defining constants no
longer works
* `old-type.pt` verifies that the type keyword along with a variable
type is no longer accepted in Like
