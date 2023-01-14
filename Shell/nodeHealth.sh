#!/bin/bash

###############################################

#Auther: Vinay Kumar Podila
#Date: 06-01-2023
#
# This Script Outputs the NodeHealth.

###############################################


set -x #debug mode
set -e #exits the script when there is an error
set -o # pipefail


echo "********************Today's Date & Time: $(date)**************************"

df -h

free -h

nproc

echo "The last login: $(who) as of today: $(date)"

mkdir node

cd node

ps -ef | grep amazon | awk -F " " '{ print $2 }' > nodehealth.txt


#curl and wget command is used to get the content from the internet. If you dont want to save the output and store it in a file use curl command. If you want to store the output into file use the wget command.
curl https://github.com/iam-veeramalla/sandbox/blob/main/log/dummylog01122022.log | grep ERROR > error.txt


