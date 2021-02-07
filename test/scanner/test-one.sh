#!/usr/bin/env bash

# Given a test case such as "test/scanner/keywords",
# generates "test/scanner/keywords.output"
# and compares it to "test/scanner/keywords.expected"

test_case=$1

ptc_command="./bin/ptc -o1 -t1 -L lib/pt $test_case.pt"
# write stdout to file, ignore stderr
ssltrace "$ptc_command" lib/pt/scan.def -e \
    > $test_case.output \
    2> /dev/null

# if .expected file does not exist
if [ ! -f $test_case.expected ]; then 
    echo "FAIL: expected file does not exist"
    exit 1
fi

diff=$(diff $test_case.expected $test_case.output)

# diff is empty => files are same => test is good
if [ -z "$diff" ]; then
    echo "PASS: $1"
else
    echo "FAIL: $test_case.expected does not match $test_case.output"
    exit 1
fi
