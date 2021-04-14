#!/bin/bash

source_files=$(find test/coder test/examples -name "*.pt")

for source_file in $source_files; do
    echo "Compiling $source_file"
    ./test/compile.sh $source_file > /dev/null
done
