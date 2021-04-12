#!/bin/bash

source_files=$(find test/coder -name "*.pt")

for source_file in $source_files; do
    echo "Compiling $source_files"
    ./test/compile.sh $source_file
done
