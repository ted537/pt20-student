#!/bin/bash
# test all and show summary

results=$(./test/test-all.sh | grep 'PASS\|FAIL')
echo "$results";

passes=$(echo "$results" | grep -c PASS)
fails=$(echo "$results" | grep -c FAIL)
echo =========
echo Passes: $passes
echo Fails: $fails
echo =========

if [ "$fails" -eq "0" ]; then
	echo "All tests passing";
else
	echo "The following tests are failing";
	./test/failing.sh
fi
