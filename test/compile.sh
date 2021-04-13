#!/bin/bash

src=$1

# generate assembly
compile_messages=$(./bin/ptc -S -L lib/pt $src)
echo $compile_messages
echo $compile_messages > $src.compile
mv -f *.s $(dirname $src)
# generate executable
# execute silently to avoid duplicate outputs for coder errors
./bin/ptc -L lib/pt $1 &> /dev/null
mv -f *.out $(dirname $src)
