#!/bin/bash
echo "enter the stirng to check its length"
read sampletext
#the below line checks for the length of the sampletext entered by the user - #variable will give us the length of the variable
checklen=${#sampletext}
echo $checklen
