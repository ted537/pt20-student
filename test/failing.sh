#!/bin/bash
# displays failing commands

commands=$(./test/commands.sh)

# loop through commands by line
while IFS= read -r command; do
	output=$($command)
	# output command if it had nonzero status code
	if [ ! "$?" -eq "0" ]; then
		echo "$command";
	fi
done <<< "$commands"
