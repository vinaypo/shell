#!/bin/bash

echo "Enter the disk usage: "
read al
df -h | awk '{print $5 " " $1}' | while read op;
do
  #echo "Disk Details: $op"
  avail=$(echo $op | awk '{print $1}'| cut -d'%' -f1)
  file_sys=$(echo $op | awk '{print $2}')
  #echo $avail
  if (( $avail > $al ))
  then
	  echo "Critical by $file_sys!!"
  fi
done


