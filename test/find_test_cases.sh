#!/bin/bash
roots="$@"
# magically find test cases by the .pt ending
expected_files=$(find $roots -name "*.pt")

# strip file endings
for expected_file in $expected_files; do
	echo ${expected_file%.*}
done
