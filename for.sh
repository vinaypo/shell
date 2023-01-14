#!/bin/bash

for ((i=1; i<=10; i++))
  do 
   echo "$i"
  done
echo "**********************************"

for ((x=10; x>=1; x--)); do echo "$x"; done

echo "**********************************"
for table in {1..10} 
    do 
	  echo "The value of table is: $table"
    done
