#!/usr/bin/env bash

find_test_cases() {
    # magically find test cases by the .expected ending
    expected_files=$(find test/parser test/examples -name "*.pt")

    # strip file endings
    for expected_file in $expected_files; do
        echo ${expected_file%.*}
    done
}

# generate outputs
for test_case in $(find_test_cases); do
    ./test/parser/test-one.sh $test_case
done
