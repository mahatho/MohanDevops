#!/bin/bash

USERID=$(id -u)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%F-%H-%S)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R=\e[31m
G=\e[32m
N=\e[0m

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....$R Failure $N"
        exit 1
    else
        echo "$2....$G Success $N"
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