#!/bin/bash

commands=$(./test/commands.sh)

# loop through commands by line
while IFS= read -r command; do
	output=$($command)
	if [ ! "$?" -eq "0" ]; then
		echo "$command";
	fi
done <<< "$commands"
