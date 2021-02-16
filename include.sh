#!/usr/bin/env bash

# Replaces "#include filename" with the contents of that file

while IFS= read -r line; do
    if [[ "$line" == \#include* ]]; then
        included_file=${line#* }
        echo "{Start of contents of $included_file}"
        cat "$included_file";
        echo "{End of contents of $included_file}"
    else
        echo "$line";
    fi
done < $1
