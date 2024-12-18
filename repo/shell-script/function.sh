#!/bin/bash

USERID=$(id -u)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%F-%H-%S)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

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

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installation of Mysql"


dnf install git -y &>>$LOGFILE
VALIDATE $? "Installation of git"