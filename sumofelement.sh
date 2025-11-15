#!/bin/bash
num="2 4 6 7 8 9"
sum=0
for i in $num
do
	sum=$((sum+i))
done
echo "The sum of all the elements in the array is $sum"
