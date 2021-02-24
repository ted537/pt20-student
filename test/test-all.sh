#!/bin/bash

./test/generate-traces.sh
commands=$(./test/commands.sh)

# loop through commands by line
while IFS= read -r command; do
	output=$($command)
	echo "$output";
done <<< "$commands"
