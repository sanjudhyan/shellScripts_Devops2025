#!/bin/bash
usage=`df -h . | awk -F " " 'NR > 1 {print $(NF-1)}' | sed  's/%//g'`
if [ $usage -lt 70 ]
then
	#echo "uh ho" | mail -s "memory usage reached threshold value $usage" hsanjayr@gmail.com
	#echo "Memroy usage reached thershold $usage"
	#echo "Memory usage reached threshold $usage" | mail -s "Memory Usage Alert" sanjudhyan@gmail.com
	echo "Memory usage reached threshold $usage" | mail -s "System memory usage alert!" sanjudhyan@gmail.com
fi

