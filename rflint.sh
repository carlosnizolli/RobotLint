#!/bin/sh

if ([ -n "$2" ] or [ ! -z "$2" ])
then
    rflint --recursive $1 
else
    rflint --recursive --configure $2 $1
fi    
