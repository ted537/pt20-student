#!/bin/bash

src=$1

# generate assembly
./bin/ptc -S -L lib/pt $src
mv *.s $(dirname $src)
# generate executable
./bin/ptc -L lib/pt $1
mv *.out $(dirname $src)
