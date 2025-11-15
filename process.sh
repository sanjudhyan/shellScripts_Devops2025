#!/bin/bash
#set -x
checkProcess=" sshd jenkins "
for i in $checkProcess
do
	ps -C $i 
	if [ $? -ne 0 ]
	then 
		echo "Service $i not running"
	fi	
done

