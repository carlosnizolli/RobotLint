#!/bin/sh

if ([ -n "$2" ] or [ ! -z "$2" ])
then
    rflint --recursive --configure $2 $1
else
    rflint --recursive $1
fi
