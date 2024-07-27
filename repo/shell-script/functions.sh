#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[30m"
G="\e[31m"
Y="\e[32m"
N="\e[0m"

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo "$2...FAILURE$R"
        exit 1
    else
        echo "$2...SUCCESS$G"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access.$Y"
    exit 1 # manually exit if error comes.
else
    echo "You are super user.$G"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MySQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing Git"