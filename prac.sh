#!/bin/bash

echo "Enter your marks im Maths: "
read ma

if [[ $ma<=100 && $ma>90 ]]
then
  echo "You have got A+ Grade."
elif [[ $ma<=90 && $ma>80 ]]
then
  echo "You have got A Grade."
elif [[ $ma<=80 && $ma>70 ]] 
then
  echo "you have got B Grade."
elif [[ $ma<=70 && $ma>60 ]]
then
  echo "you have got C Grade."
else
  echo "You have failed."
fi

echo "the details of your domain details :"
read dom
whois $dom

echo "Your username: "
read username
echo "Your password: "
read password

if [[ $username == "admin" && $password == "test@123" ]]
then
  echo "login successful."
else
  echo "Try again."
fi

echo "Enter your a value: "
read a
echo "Enter your b value: "
read b
echo "Enter your c value: "
read c

if (( $a>$b && $a>$c ))
then
  echo "A is biggest"
elif (( $b>$a && $b>$c ))
then
  echo "B is biggest"
else
  echo "C is biggest"
fi

add_user()


{

USER=$1
PASS=$2

useradd -m -p $PASS $USER && echo "user addesd successfully!!"

}

#main

add_user bunty test@123
