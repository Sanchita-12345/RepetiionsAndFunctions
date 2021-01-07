#!/bin/bash -x
read -p "Enter a number : " n
read -p "Enter another number : " n1
x=$n
rev=0
function myfunc() {

	while [ $n != 0 ]
	do
		a=$(( $n % 10))
		rev=$((( $rev * 10 ) + $a ))
		n=$(( $n / 10 ))
	done
	if [	$x -eq $rev ]
	then
		echo $rev "is Palindrome"
	else
		echo $rev "is not Palindrome"
	fi
}
myfunc
x1=$n1
rev1=0
function myfunc1() {

     while [ $n1 != 0 ]
     do
          a1=$(( $n1 % 10))
          rev1=$((( $rev1 * 10 ) + $a1 ))
          n1=$(( $n1 / 10 ))
     done
     if [ $x1 -eq $rev1 ]
     then
          echo $rev1 "is palindrome"
     else
          echo $rev1 "is not Palindrome"
     fi
}
myfunc1
