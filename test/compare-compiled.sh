#!/bin/bash

# Color
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

function red {
    printf "${RED}$@${NC}\n"
}

function green {
    printf "${GREEN}$@${NC}\n"
}

executables=$(find test/coder -name "*.out")

for executable in $executables; do
    ./$executable > $executable.log
	if [ -f $executable.expected ]; then
		if cmp -s $executable.log $executable.expected; then
			echo "$(green PASS): $executable.log matches $executable.expected"
		else
			echo "$(red FAIL): $executable.log does not match $executable.expected"
		fi
	fi
done

compile_logs=$(find test/coder -name "*.compile")

for compile_log in $compile_logs; do
	if [ -f "$compile_log.expected" ]; then
		if cmp -s $compile_log $compile_log.expected; then
			echo "$(green PASS): $compile_log matches $compile_log.expected"
		else
			echo "$(red FAIL): $compile_log does not match $compile_log.expected"
		fi
	fi
done
