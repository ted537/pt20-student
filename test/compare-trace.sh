#!/bin/bash
# compares expected file to output file, ignoring whitespace and comments

output=$1
expected=$2

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

function yellow {
    printf "${YELLOW}$@${NC}\n"
}

tokens() {
	trace=$1
	echo $(cat $trace | grep -e \\. -e \# | grep -v %)
}

expected_tokens=$(tokens $expected)
output_tokens=$(tokens $output)

if [ "$expected_tokens" = "$output_tokens" ]; then
	echo $(green PASS): $expected matches $output;
	exit 0;
else
	echo $(red FAIL): $expected does not match $output;
	echo "=== EXPECTED ==="
	echo $expected_tokens;
	echo "=== OUTPUT ==="
	echo $output_tokens;
	exit 1;
fi
