#!/bin/bash -x
read -p "Enter a number : " n
x=$n
y=$n
rev=0
count=0

function prime() {
	for(( i=2; i<n; i++))
	do
		if [ $(($n%$i)) -eq 0 ]
		then
		count=$(($count+1))
		fi
	done
	if [ $count -eq 0 ]
	then
		echo $n "is a prime number"
		flag=$n
	else
		echo $n "is not a prime number"
		flag=1
	fi
}
prime
function palindrome() {

     while [ $n != 0 ]
     do
          a=$(( $n % 10))
          rev=$((( $rev * 10 ) + $a ))
          n=$(( $n / 10 ))
     done
     if [ $x -eq $rev ]
     then
          echo $rev "is Palindrome number"
	else
		echo $rev "is not a prime number"
     fi
}
palindrome
if [ $flag -eq $rev ]
then
	echo $rev "is a prime & palindrome number"
else
	echo $rev "is not a prime & palindrome number"
fi
