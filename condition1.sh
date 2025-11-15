#!/bin/bash
num1=10
num2=20
if [num1==num2]
then
	echo "The numbers are equal"
else
	echo "The numbers are not equal"
fi

num="10"
num1="20"
if [num -eq num1]
then 
	echo "the strings are equal"
else
	echo "the strings are not equal"
fi
