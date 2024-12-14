#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run the script with super user access"
else
    echo "You are Super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation.......FAILURE"
else
    echo "Installation........SUCCESS"
fi
 dnf install git -y

if[ $? -ne 0 ]
then
    echo "Installation of GIT.......FAILURE"
else
    echo "Installation of GIT........SUCCESS"
fi