#!/usr/bin/env bash

first=$1
second=$2

# testing integer
re='^-?[0-9]+(\.[0-9]+)?$'

first_sq=$(echo "$first * $first" | bc -l)
second_sq=$(echo "$second * $second" | bc -l)

distance=$(echo "scale=2; sqrt($first_sq + $second_sq)" | bc -l)

if [ "$#" -ne 2 ]; then
    echo "incorrect args"
    exit 1
elif [[ ! $first =~ $re ]] || [[ ! $second =~ $re ]]; then 
    echo "not numbers"
    exit 1
elif (( $(echo "$distance <= 1" | bc -l) )); then
  echo "10"
elif (( $(echo "$distance > 1 && $distance <= 5" | bc -l) )); then
  echo "5"
elif (( $(echo "$distance > 5 && $distance <= 10" | bc -l) )); then
  echo "1"
else
  echo "0"
fi