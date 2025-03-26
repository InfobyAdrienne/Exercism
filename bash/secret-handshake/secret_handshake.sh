#!/usr/bin/env bash

number=36 # get the user entry 

echo $number
# convert the user entry to binary, tested this with the number 9
# reverse the binary so the for loop works 
result=$(echo "obase=2; $number" | bc )

digits=($(echo $result | grep -o .))

echo "Array elements:"

echo "${digits[@]}"

echo "${digits[-1]}"

empty_string=""

if [[ "${digits[-1]}" -eq 0 ]]; then
  empty_string+="wink"
else 
  echo "hello"
fi

echo $empty_string
    
# for digit in "${digits[@]}"; do
#     echo "$digit"
#       if 
# done

# echo $result

# echo ${result[2]}

# empty_string=""

# for ((i = ${result} ; i < max ; i++ )); 
#   do echo "$i"; 
#   if ${result}[-1]
# done


