#!/bin/sh
echo "step by step objective-c"
echo " 1 compiling helloworld.m to helloworld.o"
#gcc -framework Foundation -c helloworld.m
echo " 2 linking helloworld.o to helloworld"
#gcc -framework Foundation -o helloworld helloworld.o -lobjc

gcc -framework Foundation helloworld.m MyHelloWorld.m -o helloworld

echo " 3 running helloworld"
./helloworld
echo "Done!"
