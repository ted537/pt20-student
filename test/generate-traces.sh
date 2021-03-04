#!/bin/bash
# generate all required ssltraces for evaluation

# run scanner on everything
for test_case in $(./test/find_test_cases.sh test); do
    ./test/scanner-trace.sh $test_case;
done

# run parser on parser tests and semantic tests
parser_test_dirs="test/semantic test/parser test/examples"
for test_case in $(./test/find_test_cases.sh $parser_test_dirs); do
    ./test/parser-trace.sh $test_case;
done

# run semantic on just semantic tests
for test_case in $(./test/find_test_cases.sh test/semantic test/examples); do
    ./test/semantic-trace.sh $test_case;
done
