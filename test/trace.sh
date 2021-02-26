#!/bin/bash
# wrapper around ssltrace command that reorders parameters
# such that scanner-trace and parser-trace are trivial

def=$1
o=$2
t=$3
ext=$4
test_case=$5
ptc_command="./bin/ptc -o$o -t$t -L lib/pt $test_case.pt"
# write stdout to file, ignore stderr
ssltrace "$ptc_command" $def -e \
	> ${test_case}${ext} \
	2> /dev/null
