#!/bin/bash
# generate all required ssltraces for evaluation

semantic_test_dirs="$coder_test_dirs test/semantic test/examples test/coder"
parser_test_dirs="$semantic_test_dirs test/parser"
scanner_test_dirs="$parser_test_dirs test/scanner"

for test_case in $(./test/find_test_cases.sh $scanner_test_dirs); do
    ./test/scanner-trace.sh $test_case;
done

for test_case in $(./test/find_test_cases.sh $parser_test_dirs); do
    ./test/parser-trace.sh $test_case;
done

for test_case in $(./test/find_test_cases.sh $semantic_test_dirs); do
    ./test/semantic-trace.sh $test_case;
done
