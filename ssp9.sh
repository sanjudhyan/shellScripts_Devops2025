#To check if the given number is even or odd
#!/bin/bash
echo "Enter a value"
read value
if [ $((value % 2)) -ne 0 ]
then
	echo "$value is odd"
else
	echo "$value is even"
fi
