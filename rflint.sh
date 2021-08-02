#!/bin/sh

if ([ -z "$2" ] && [ -z "$3" ] && [ -z "$4" ])
then
    rflint --recursive $1 
    
elif ([ ! -z "$2" ] && [ -z "$3" ] && [ -z "$4" ])
then
    rflint --recursive --configure $2 $1

elif ([ -z "$2" ] && [ ! -z "$3" ] && [ -z "$4" ])
then
    rflint --recursive --ignore $3 $1

elif [ ! -z "$4" ]
then
    rflint --argumentfile $4 $1
    
else
    rflint --recursive --configure $2 --ignore $3 $1
fi
