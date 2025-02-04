#!/usr/bin/env bash

text=$@

# removes everything except letters, replaces with space 
text=$(echo $text | tr -d "'" | tr '[a-z]' '[A-Z]' | sed "s/[^[:alpha:]]/ /g")
word=""
IFS=' '

read -ra newarr <<< "$text"

for val in "${newarr[@]}";
do
    echo ${val:0:1} | tr -d '\n'
done 

# need to take care of globbing character
# need to take care of apostrophes 
