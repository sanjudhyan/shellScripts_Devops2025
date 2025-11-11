#!/bin/bash
echo “enter the path to check”
read name
echo "$name"
if [ -f $name ]
then 
echo “the path of $name is a file”
elif [ -d $name ]
then
echo “$name is a directory”
elif [ -L $name ]
then
echo “$name is a link”
esle
echo “$name doesn’t exist”
fi
