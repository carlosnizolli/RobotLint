#!/bin/sh

if [ -n "$2" ]
then
    rflint --recursive $1 
else
    rflint --recursive $1 --configure $2
fi    
