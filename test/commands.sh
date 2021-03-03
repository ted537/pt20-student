#!/bin/bash
# generates comparison commands

compare=./test/compare-trace.sh

# run given tests
for test_case in $(./test/find_test_cases.sh test/examples); do
	echo $compare $test_case.parsed $test_case.pt.ssltrace-t2-e
done

# run our tests
# run our scanner tests
for test_case in $(./test/find_test_cases.sh test/scanner); do
	echo $compare $test_case.scanned $test_case.expected;
done

# run our parser tests
for test_case in $(./test/find_test_cases.sh test/parser); do
	echo $compare $test_case.parsed $test_case.expected;
done

# run our semantic tests
for test_case in $(./test/find_test_cases.sh test/semantic); do
	echo $compare $test_case.semantic $test_case.expected;
done
