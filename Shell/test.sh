#!/bin/bash

for i in {1..100}
   do
    if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ]
     then 
	echo "$i"
    fi
   done

 echo "***********************************************************************"
 

echo "Enter your value: "
read x

grep -o "p" <<<$x | wc -l

echo "**************************************************************************"

