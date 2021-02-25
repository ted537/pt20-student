#!/bin/bash
cd parser
make
status=$?
cd ..
exit $status # carry over exit code from make
