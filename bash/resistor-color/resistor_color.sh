#!/usr/bin/env bash

first=$1
input=$2

array=(black brown red orange yellow green blue violet grey white) 

if [[ "$first" == "colors" ]]; then
    for color in "${array[@]}"; do
        echo "$color"
    done
    exit 0
fi

for i in "${!array[@]}"; do
    if [[ "${array[$i]}" = "${input}" ]]; then
        echo "${i}";
        exit 0
    fi
done
