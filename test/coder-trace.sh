#!/bin/bash
# bind trace to semantic parameters

# generate assembly
./test/trace.sh lib/pt/coder.def 4 4 .coder $1 -S
# generate executable
./test/trace.sh lib/pt/coder.def 4 4 .coder $1
