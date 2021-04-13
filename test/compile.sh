#!/bin/bash

src=$1

# generate assembly
./bin/ptc -S -L lib/pt $src
mv -f *.s $(dirname $src)
# generate executable
# execute silently to avoid duplicate outputs for coder errors
./bin/ptc -L lib/pt $1 &> /dev/null
mv -f *.out $(dirname $src)
