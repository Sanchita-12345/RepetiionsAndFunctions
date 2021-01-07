#!/bin/bash -x
ishead=1;
n=1
while [ $n != 11 ]
do
	rc=$((RANDOM%2));

	if [ $rc -eq $ishead ];
	then
   	echo "Head";
	else
   	echo "Tail";
	fi
	n=$(( $n + 1 ))
done
