#!/bin/bash

echo "Total no of arguments : $@"
echo "Count of arguments: $#"
echo "Script Name: $0"

echo "Present Working Directory : $PWD"
echo "Home Directory : $HOME"
echo "Which user is running the script : $USER"
echo "Hostname : $HOSTNAME"
echo "Process ID : $$"
sleep 30 &
echo "Backgroung proces id : $!"