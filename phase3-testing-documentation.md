# Phase 3 Testing Documentation

**All test cases for phase 3 are contained within the /test/semantic directory**

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

### Block

The test cases contained within this folder are to test the functionality
of Like blocks.
A simple program is found, 
omitting the top level program statement present in PT pascal.

### packages
The tests cases contained within this folder are to test the functionality of new Like Packages.
* All files are clearly labelled according to their naming convention as to what functionality within Packages they are testing
* `local-procedure-package.pt` tests the functionality of declaring a local procedure within the scope of a package
* `local-val-package.pt` test the functionality of declaring a local constant/variable within the scope of a package
* `public-procedure-package.pt` tests the functionality of declaring a public procedure within the scope of a package
* `public-val-package.pt` tests the functionality of declaring a public constant/varaible within the scope of a package

### Strings

Test cases contained here are for testing the new Like string literals.
* Testing for strings, string identifiers and chars are included
* Also test for null string since Like now accepts these

### Operations

The test cases contained within this folder are to test the functionality
of Like string operations.
* All files ar clearly labelled in which specific string operation they
test. As such, a single example will be provided for clarity sake
* `string_concatenate.pt` tests that two strings can be concatentated using
`|` to form a new string
* Some tests are also included that use identifiers instead of raw string literals for input (ex. `string_concatenate_identifier.pt`)
* Tests are also included to check type mismatch error in all operations. An example is `string_concatenate_invalid_first_string.pt` which tests the first required string if it is another type. In this example it is an integer which results in an error. 
* Tests are included to test the new string equality and inequality tokens. Also error test cases are included to show that strings cannot be used for greater or less than.
* Integer tests are included to show that integers are still supported after the changes for strings. Tests are included for binary and unary operators


### procedure-params

The test cases contained within this folder are to test the functionality
of Like `fun` or Like program routines.
* `proc-many-params.pt` tests that functions can be declared with any
number of parameters and parameter types (`number : like 1, var y : like 5`)
* `proc-no-params.pt` tests that functions can be declared without any
parameters (`fun flag is`)
* `proc-one-param.pt` tests that a function can be declared with a single
parameter (`var number : like 1`)

### statements

### variables-and-types

The test cases contained within this folder are to test the functionality
of Like variables and the different ways in which they can be declared.
* `initial-value-var.pt` tests that variables can be declared with an
explicit initial value in the form `var x = 5;` and the variable type
integer is inferred.
* `like-array-string.pt` tests that variables can be declared as an array
and take the type of a string through a like clause (`var animal [8] : like "fly";`).
* `like-array.pt` tests that variables can be optionally be declared as an
array using a like clause and defining the number of elements within an 
array (`var x[5]: like 1`)
* `like-var-identifier.pt` tests that a variable can be declared using a like
clause and a predefined identifier with the type being inferred (`var y: like x;`).
* `like-var-integer.pt` tests that a variable can be declared using a like
caluse and an integer with the type being set to integer (`var y: like 1;`)
* `like-var-string.pt` tests that a variable can be declared using a like
clause and a string with the type being set to char (`var y: like "Hello";`)
* `symbol` ensures that the symbol table is updating and that a Like
variable can be declared with reference to another declared variable

**tests no in folders**
