#!/bin/bash

#Given two integers,  and , identify whether  or  or . Exactly one of the following lines:
#- X is less than Y
#- X is greater than Y
#- X is equal to Y
#Solution:

read -p "Enter the value of X : " X
read -p "Enter the value of Y : " Y
if [[ $X -gt $Y  ]]; then
    echo "${X} is greater than ${Y}"
elif [[ $X -lt $Y ]]; then
    echo  "${X} is less than ${Y}"
else
    echo "${X} is equal to ${Y}"
fi

