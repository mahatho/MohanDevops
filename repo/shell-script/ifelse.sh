#!/bin/bash

Number=$1

echo "Please enter the number : $Number"

if [ $Number -ge 100 ]
then
    echo "Number is greater than 100"
else
    echo "Number is not greater than 100"
fi