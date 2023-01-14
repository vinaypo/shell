#!/bin/bash

df -h | awk -F" " '{print $5 "  " $1}' | while read op
do
 #echo $op
 use=$(echo $op | awk '{print $1}' | cut -d'%' -f1)
 file=$(echo $op | awk '{print $2}')
 if [[ $use -ge 4 ]]
 then
    echo "result $file"
 fi
 #echo $use
done
