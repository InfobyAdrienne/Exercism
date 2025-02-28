#!/usr/bin/env bash

val=$1
string="${val^^}"
length="${string}"

arr=()

for ((i = 0; i < length; i++)); do 
  char="${string:i:1}"
    if [[ "$char" =~ [AEIOULNRST] ]]; then
      arr+=('1')
    elif [[ $char =~ [BCMP] ]]; then
      arr+=('3')
    elif [[ $char =~ [DG] ]]; then
      arr+=('2')
    elif [[ $char =~ [FHVWY] ]]; then
      arr+=('4')
    elif [[ $char =~ [K] ]]; then
      arr+=('5')
    elif [[ $char =~ [JX] ]]; then
      arr+=('8')
    elif [[ $char =~ [QZ] ]]; then
      arr+=('10')
    else
      arr+=('0')
    fi
done

for n in "${arr[@]}"
do 
  (( total += n ))
done

if [[ $total -ne '0' ]]; then 
  echo "$total"
else
  echo '0'
fi 