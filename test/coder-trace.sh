#!/bin/bash
# bind trace to semantic parameters

./test/trace.sh lib/pt/coder.def 4 4 .coder $1
# cleanup executable
rm *.out
