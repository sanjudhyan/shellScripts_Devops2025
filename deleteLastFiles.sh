#!/bin/bash
ls -lrt | awk -F " " 'NR>1{print $NF}' > latestfiles
total=`cat latestfiles | wc -l`
echo "enter the number of values returned"
read count
value=`expr $total - $count`
head -$value latestfiles | xargs rm -f
