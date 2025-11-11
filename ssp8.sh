#program to find greatest of three numbers
#!/bin/bash
if [ $# -ne 3 ]
then
	echo "Pass atleast three commands"
	exit 1
fi
if [ $1 -gt $2 ] && [ $1 -gt $3 ]
then
	echo "$1 is greatest of all three numbers"
elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
then
	echo "$2 is greatest of three numbers"	
else
	echo "$3 is greatest of three numbers"
fi

