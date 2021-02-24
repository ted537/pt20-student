#!/bin/bash
output=$1
expected=$2

tokens() {
	trace=$1
	echo $(cat $trace | grep -v %)
}

expected_tokens=$(tokens $expected)
output_tokens=$(tokens $output)

if [ "$expected_tokens" = "$output_tokens" ]; then
	echo $expected matches $output;
	exit 0;
else
	echo $expected does not match $output;
	echo "=== EXPECTED ==="
	echo $expected_tokens;
	echo "=== OUTPUT ==="
	echo $output_tokens;
	exit 1;
fi
