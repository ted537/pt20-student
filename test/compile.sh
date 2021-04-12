#!/bin/bash

src=$1

# generate assembly
./bin/ptc -S -L lib/pt $src
mv -f *.s $(dirname $src)
# generate executable
./bin/ptc -L lib/pt $1
mv -f *.out $(dirname $src)
