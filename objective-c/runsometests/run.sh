#!/bin/sh
echo "****\nCompiling, linking and running some tests\n****"
gcc -framework Foundation sometests.m -o sometests
./sometests
echo "****\nDone!\n****"
