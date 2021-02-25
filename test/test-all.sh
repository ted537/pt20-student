#!/bin/bash
# generate all test outputs.
# pretty overwhelming to look at directly.
# ./test/summary.sh is much better for actually observing

./test/generate-traces.sh
commands=$(./test/commands.sh)

# loop through commands by line
while IFS= read -r command; do
	output=$($command)
	echo "$output";
done <<< "$commands"
