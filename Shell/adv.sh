#!/bin/bash


backup_date=$(date +'%m/%d/%y %H:%M:%S')
df -h | awk '{print $5 " " $1}' | while read op;
do
  #echo "Disk Details: $op"
  avail=$(echo $op | awk '{print $1}'| cut -d'%' -f1)
  file_sys=$(echo $op | awk '{print $2}')
  #echo $avail
  if [ $avail -ge 0 ]
  then
	  echo "Critical by $file_sys on $backup_date"
  fi
done


