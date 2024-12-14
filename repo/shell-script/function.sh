#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2.....Failure"
        exit 1
    else
        echo "$2.....Success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run the script with super user access"
else
    echo "You are Super user"
fi

dnf install mysql -y
VALIDATE $? "Installation of Mysql"


dnf install git -y
VALIDATE $? "Installation of git"