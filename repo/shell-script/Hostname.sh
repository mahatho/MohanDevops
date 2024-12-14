#!/usr/bin/env bash
SERVERIP="54.224.178.57"
NOTIFYEMAIL=test@example.com

ping -c 3 $SERVERIP > /dev/null 2>&1
if [ $? -ne 0 ]
then
   # Use mailer here:
   mailx -s "Server $SERVERIP is down" -t "$NOTIFYEMAIL" < /dev/null
fi