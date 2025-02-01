#!/usr/bin/env bash

DNA_1=$1
DNA_2=$2

if [ $# -ne 2 ]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
elif [ $1 == $2 ]; then
    echo "0"
else
    size=${#DNA_1}
    if [ ${#DNA_1} -ne ${#DNA_2} ]; then # ${#variable} is used to get the size of the variable
        echo "The strands must be of equal length."
        exit 1
    fi
    hamming_distance=0
    for ((i = 0; i < size; i++)); do
        if [ "${DNA_1:i:1}" != "${DNA_2:i:1}" ]; then
        ((hamming_distance++))
        fi
    done
    echo "$hamming_distance"
fi 