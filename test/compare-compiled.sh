#!/bin/bash

# Color
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

function red {
    printf "${RED}$@${NC}\n"
}

function green {
    printf "${GREEN}$@${NC}\n"
}

executables=$(find test/coder -name *.out)

for executable in $executables; do
    ./$executable > $executable.log
    if cmp -s $executable.log $executable.expected; then
        echo "$(green PASS): $executable.log matches $executable.expected"
    else
        echo "$(red FAIL): $executable.log does not match $executable.expected"
    fi
done
