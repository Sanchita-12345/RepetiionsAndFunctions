#!/bin/bash -x
read -p "Enter the term : " n
for (( i=1; i<=n; i++))
do
	sum+=$(( 1 / $i ))
done
	echo $sum
