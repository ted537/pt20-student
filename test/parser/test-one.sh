#!/usr/bin/env bash

# Given a test case such as "test/parser/keywords",
# generates "test/parser/keywords.output"
# and compares it to "test/parser/keywords.expected"

test_case=$1

ptc_command="./bin/ptc -o2 -t2 -L lib/pt $test_case.pt"
# write stdout to file, ignore stderr
ssltrace "$ptc_command" lib/pt/parser.def -e \
    > $test_case.output \
    2> /dev/null

# if .expected file does not exist
if [ ! -f $test_case.expected ]; then 
    echo "FAIL: expected file does not exist"
    exit 1
fi

diff=$(diff -b $test_case.expected $test_case.output)

# diff is empty => files are same => test is good
if [ -z "$diff" ]; then
    echo "PASS: $1"
else
    echo "FAIL: $test_case.expected does not match $test_case.output"
    exit 1
fi
