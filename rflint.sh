#!/bin/sh

echo $1 
echo $2 

if [ -n $2 ]
then
    rflint --recursive $1 
else
    rflint --recursive --configure $2 $1
fi    
