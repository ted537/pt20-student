#!/bin/bash
source ./test/init.sh
# run example tests
for test_case in $(./test/find_test_cases.sh test/examples); do
	echo $compare $test_case.scanned $test_case.pt.ssltrace-t1-e
	echo $compare $test_case.parsed $test_case.pt.ssltrace-t2-e
done
