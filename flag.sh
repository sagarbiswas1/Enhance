#!/bin/bash

if [ ! -n "$1" ]
then
    echo 'flag.sh [svg file]'
else
    cat $1 | grep '</tspan>' | cut -d '>' -f2 | cut -d '<' -f1 | tr -d '\n' | tr -d ' '
    echo '\n'
fi