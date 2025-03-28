#!/usr/bin/env bash

number=$1 # get the user entry 

# convert the user entry to binary, tested this with the number 9
# reverse the binary so the for loop works 
result=$(echo "obase=2; $number" | bc )

digits=($(echo $result | grep -o .))

length=${#digits[@]}

empty_array=()

if (( length >= 1 )) && [[ "${digits[-1]}" -eq 1 ]]; then
  empty_array+=("wink")
fi 

if (( length >= 2 )) && [[ "${digits[-2]}" -eq 1 ]]; then
  empty_array+=("double blink")
fi 

if (( length >= 3 )) && [[ "${digits[-3]}" -eq 1 ]]; then
  empty_array+=("close your eyes")
fi 

if (( length >= 4 )) && [[ "${digits[-4]}" -eq 1 ]]; then
  empty_array+=("jump")
fi

if (( length >= 5 )) && [[ "${digits[-5]}" -eq 1 ]]; then
  n=${#empty_array[@]} # number of elements in the array
  reversed_array=()
  for (( i = n-1; i >= 0; i-- )); do
    reversed_array+=("${empty_array[i]}")
  done
    echo "$(IFS=,; echo "${reversed_array[*]}")"
exit 0
fi

echo $(IFS=,; echo "${empty_array[*]}")