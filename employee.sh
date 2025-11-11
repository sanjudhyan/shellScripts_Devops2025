#!/bin/bash
echo "Enter the employee file name:"
read employee

i=1
while read line
do
    if [ $i -gt 1 ]; then
        age=$(echo "$line" | awk '{print $NF}')
        if [ "$age" -gt 60 ]; then
            echo "$line" | awk '{print $1}'
        fi
    fi
    i=$((i + 1))
done < "$employee"
