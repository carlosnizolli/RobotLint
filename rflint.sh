#!/bin/sh

if [ "$2" -eq "" ]
then
    rflint --recursive $1 
else
    rflint --recursive --configure $2 $1
fi
