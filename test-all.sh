#!/usr/bin/env bash

find_test_cases() {
    root=$1
    # magically find test cases by the .expected ending
    expected_files=$(find $root -name "*.expected")

    # strip file endings
    for expected_file in $expected_files; do
        echo ${expected_file%.*}
    done
}

trace() {
    def=$1
    o=$2
    t=$3
    ext=$4
    test_case=$5
    ptc_command="./bin/ptc -o$o -t$t -L lib/pt $test_case.pt"
    # write stdout to file, ignore stderr
    ssltrace "$ptc_command" $def -e \
        > ${test_case}${ext} \
        2> /dev/null
}

scanner="trace lib/pt/scan.def 1 1 .scanned"
parser="trace lib/pt/parser.def 2 2 .parsed"

# run scanner on everything
for test_case in $(find_test_cases test); do
    $scanner $test_case;
done

# run parser on just parser tests
for test_case in $(find_test_cases test/parser); do
    $parser $test_case;
done