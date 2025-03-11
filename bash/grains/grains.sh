#!/usr/bin/env bash

entry=$1
total=0

if [[ "$entry" =~ ^-?[0-9]+$ ]]; then
  if (( entry <= 0 || entry > 64 )); then 
    echo "Error: invalid input"
    exit 1
  else 
      echo "$(echo "2^($entry-1)" | bc -l | awk '{printf "%.0f\n", $1}')"
  fi
elif [ "$entry" = "total" ]; then
  for (( i=1; i<=64; i++ )); do
    total=$(echo "2^64 - 1" | bc)
  done
  echo $total
fi 