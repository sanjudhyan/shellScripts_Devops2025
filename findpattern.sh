#!/bin/bash
echo "enter the patter to search in a file"
read pattern
grep -l -r "$pattern" * > output
if [ $? -eq 0 ] 
then
	echo "$pattern pattern found in below files"
	cat output
else
	echo "$pattern not found in any files"
fi

