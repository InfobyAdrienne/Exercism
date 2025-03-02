#!/usr/bin/env bash

year=$1

if [ "$#" -ne 1 ]; then
  echo "Usage: leap.sh <year>"
  exit 1
elif [[ $year =~ ^[+-]?[0-9]+\.[0-9]*$ ]] || [[ $year =~ ^[a-zA-Z] ]]; then
  echo "Usage: leap.sh <year>"
  exit 1
elif [ $((year % 100)) -eq 0 ] && [ $((year % 400)) -ne 0 ]; then 
  echo "false"
elif [ $((year % 4)) -eq 0 ]; then 
  echo "true"
else 
  echo "false"
fi