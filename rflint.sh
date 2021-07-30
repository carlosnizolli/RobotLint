#!/bin/sh

if ([ -z "$2" ] && [ -z "$3" ])
then
    rflint --recursive $1 
    
elif ([ ! -z "$2" ] && [ -z "$3" ])
then
    rflint --recursive --configure $2 $1
    
else
    rflint --recursive --configure $2 --ignore $3 $1
fi
