#!/usr/bin/env bash

number=$1 # get the user entry 

# convert the user entry to binary, tested this with the number 9
# reverse the binary so the for loop works 
result=$(echo "obase=2; $number" | bc )

digits=($(echo $result | grep -o .))

length=${#digits[@]}

empty_string=""

if (( length >= 1 )) && [[ "${digits[-1]}" -eq 1 ]]; then
  empty_string+="wink"
fi 

if (( length >= 2 )) && [[ "${digits[-2]}" -eq 1 ]]; then
  empty_string+="double blink"
fi 

if (( length >= 3 )) && [[ "${digits[-3]}" -eq 1 ]]; then
  empty_string+="close your eyes"
fi 

if (( length >= 4 )) && [[ "${digits[-4]}" -eq 4 ]]; then
  empty_string+="jump"
fi

if (( length >= 5 )) && [[ "${digits[-5]}" -eq 1 ]]; then
  echo $empty_string | rev
fi 

echo $empty_string
