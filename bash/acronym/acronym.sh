#!/usr/bin/env bash

text=$@

# removes everything except letters
echo $text | sed "s/[^[:alpha:]]//g"

# IFS=' '

# read -ra newarr <<< "$text"

# for val in "${newarr[@]}";
# do
#  echo "$val"
# done