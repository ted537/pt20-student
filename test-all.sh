#!/bin/sh

run_tests() {
	./test/scanner/test-all.sh
	./test/parser/test-all.sh
}

test_outputs=$(run_tests)
echo "$test_outputs";
fails=$(echo test_outputs | grep FAIL)
echo "$fails";
if [ -z "$fails" ]; then
	echo "SOME TESTS FAILED";
	exit 1;
else
	echo "ALL TESTS PASSED";
	exit 0;
fi
