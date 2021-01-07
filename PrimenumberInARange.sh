#!/bin/bash -x
read -p "Enter a number : " num1
read -p "Enter another number : " num2
for (( i=$num1; i<num2; ++i))
do
   count=0
   for (( j=2; j<=$(($i/2)); ++j ))
   do
      if [ $(($i%$j)) -eq 0 ]
      then
         count=1
         break
      fi
   done
   if [ $count -eq 0 ]
   then
      echo $i
   fi
done
