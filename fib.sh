#!/bin/bash
echo "Enter a number for getting fibonaci series"
read number
a=0
b=1
count=0
while [ $count -lt $number ]
do
	echo $a
	c=$((a+b))
	a=$b
	b=$c
	count=$((count+1))
done
