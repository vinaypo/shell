#!/bin/bash

echo "The way to find the files"
echo "What is the file you are looking for:"
read filename
#if statemant
echo "************************************************************"
if [ -f $filename ]
then
  echo "the $filename exists"
else
  echo "the $filename doesn't exists"
fi

echo "************************************************************"
echo "The way to find the age of a person to vote"
echo "What is your age?"
read age
#if..elif statement
if  [ $age -gt 18 ]
then
  echo "You are eligible to vote"
elif [ $age -lt 18 ]
then
  echo "you are not eligible to vote."	
else
  echo "You will be able to cast vote next year."
fi

echo "*************************************************************"
#nested_if
echo "what is the x value:"
read x
echo "what is the y value:"
read y

if [ $x -eq 0 ]
then
  echo "x is equal to 0"
  if [ $y -eq 1 ]
  then
    echo "y is equal to 1"
  else
    echo "y is not equal to 1"
  fi
else
  echo "x is not equal to 0"
fi  
