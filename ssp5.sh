#!/bin/bash
if [ $# -ne 2 ]
then 
	echo “Enter two arguments”
exit 1
fi
if [ $1 -gt $2 ]
then
	echo “first number is greater than second number “
else 
	echo “ first number is not greater than second number”
fi
