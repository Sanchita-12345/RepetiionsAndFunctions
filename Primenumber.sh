#!/bin/bash -x
read -p "Enter a number : " n
count=0;
for (( i=2; i<n; i++))
do
	if [ $((n%i)) -eq 0 ]
	then
		count=$(( $count + 1 ))
	fi
done
if [ $count -eq 0 ]
then
	echo $n "is a prime number"
else
	echo $n "is not a prime number"
fi
