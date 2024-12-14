#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "Exit status : $1"
    echo "What we are doing? : $2"
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