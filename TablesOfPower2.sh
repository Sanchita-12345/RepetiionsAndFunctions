#!/bin/bash
a=1;
while [ $a != 256 ]
do
	a=$(($a*2))
	echo $a
done
