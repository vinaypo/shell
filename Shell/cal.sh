#!/bin/bash

echo "Let's play."

echo "Enter two numbers of your choice!"
read a
read b

echo "Enter your choice:"
echo "1. Addition."
echo "2. Subraction."
echo "3. Multiplication."
echo "4. Division."
read cho

echo "you have entered $cho"

sleep 2

echo "*******************Lets calculate!!*************************"
case $cho in
  1)res=`echo $a + $b | bc`
  ;;
  2)res=`echo $a - $b | bc`
  ;;
  3)res=`echo $a \* $b | bc`
  ;;
  4)res=`echo "scale=2; $a / $b " | bc`
  ;;
esac
echo "result= $res"

 
#______________________________________________________________

#echo "Enter your choice"
#
#echo "1. ADD"
#echo "2. SUB"
#echo "3. MUL"
#echo "4. DIV"

#read cho

#if test $cho -eq 1
#then
#echo "Enter your two values:"
#read x
#read y
#r=`expr $x + $y`
#echo "result: $r"
#elif test $cho -eq 2
#then
#echo "Enter your two values:"
#read x
#read y
#r=`expr $x - $y`
#echo "result: $r"
#elif test $cho -eq 3
#then
#echo "Enter your two values:"
#read x
#read y
#r=`expr $x \* $y`
#echo "result: $r"
#elif test $cho -eq 4
#then
#echo "Enter your two values:"
#read x
#read y
#r=`expr $x / $y`
#echo "result: $r"
#else
#echo "bye..!! bye..!!"
#fi

