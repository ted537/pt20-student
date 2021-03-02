#!/bin/bash
# generate all required ssltraces for evaluation

# run scanner on everything
for test_case in $(./test/find_test_cases.sh test); do
    ./test/scanner-trace.sh $test_case;
done

# run parser on just parser tests
for test_case in $(./test/find_test_cases.sh test/parser test/examples); do
    echo $test_case
    ./test/parser-trace.sh $test_case;
done
