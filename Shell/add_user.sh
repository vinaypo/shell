#!/bin/bash

add_user()
{
USER=$1
PASS=$2

useradd -m -p $PASS $USER && echo "User added successfully."

}

#MAIN

add_user vinay test@123

