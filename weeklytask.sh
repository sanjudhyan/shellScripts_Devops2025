#!/bin/bash
#set -x
currentday=`date +%A`
oldfiles=`find /home/ubuntu -type f -mtime -15`
case $currentday in 
	"Monday")
	mkdir -p /home/ubuntu/tmp
	if [ $? -eq 0 ]
	then
		echo "Temporary directory created successfully"
	fi
	;;
"Tuesday") 
	echo $oldfiles
	;;
"Wednesday")
	cp $oldfiles /home/ubuntu/tmp
	if [ $? -eq 0 ]
	then
		echo "successfully copied all the old files"
	fi
	;;
"Thursday")
	rm -rf $oldfiles
	if [ $? -eq 0 ]
	then
		echo "Successfully cleared all the older files"
	fi
		;;
"Friday")
	#read the username 
	read -p "Enter the username:" Username
	#check if username exists 
	if [ id "$Username" &> /dev/null ] 
	then 
		echo "User already exists"
		exit 1
	fi
	#add user
	sudo useradd -m -G sudo "$Username"
	#If user is not created then throw a message
	if [[ $? -ne 0 ]]
	then
		echo "Failed to create user"
		exit 1
	fi

	echo "User created successfully with username '$Username'"
	;;
"Saturday"|"Sunday")
	echo "Its a holiday"
	;;
*)
	echo "No operation scheduled for the day"
	;;
esac

