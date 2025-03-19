#!/usr/bin/env bash

val=$1
string="${val^^}"  # Convert input to uppercase
length=${#string}
total=0  # Initialise total score

for ((i = 0; i < length; i++)); do
  char="${string:i:1}"
  if [[ "$char" =~ [AEIOULNRST] ]]; then
    (( total += 1 ))
  elif [[ "$char" =~ [DG] ]]; then
    (( total += 2 ))
  elif [[ "$char" =~ [BCMP] ]]; then
    (( total += 3 ))
  elif [[ "$char" =~ [FHVWY] ]]; then
    (( total += 4 ))
  elif [[ "$char" =~ [K] ]]; then
    (( total += 5 ))
  elif [[ "$char" =~ [JX] ]]; then
    (( total += 8 ))
  elif [[ "$char" =~ [QZ] ]]; then
    (( total += 10 ))
  fi
done

echo "$total"