#!/usr/bin/env bash

number=$1
word=""

if [ $# -eq 0 ]; then 
    echo "No arguments provided"
fi

if [ "$((number % 3))" -eq 0 ]; then 
    word+="Pling"
fi

if [ "$((number % 5))" -eq 0 ]; then
    word+="Plang"
fi

if [ "$((number % 7))" -eq 0 ]; then
    word+="Plong"
fi

if [ ${#word} -ne 0 ]; then 
    echo "$word"
else
    echo "$number"
fi