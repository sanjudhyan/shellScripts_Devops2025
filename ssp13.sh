#!/bin/bash
echo "Enter the filename"
read filename
i=1
while read line
do
	count=`echo $line|wc -c`
	echo " The number of chracters in line $line is $count"
	i=`expr $i+1`
done < $filename
