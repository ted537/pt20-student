#!/bin/bash

results=$(./test/test-all.sh | grep 'PASS\|FAIL')
echo "$results";

passes=$(echo "$results" | grep -c PASS)
fails=$(echo "$results" | grep -c FAIL)
echo =========
echo Passes: $passes
echo Fails: $fails
