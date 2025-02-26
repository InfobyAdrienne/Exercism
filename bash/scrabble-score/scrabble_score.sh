#!/usr/bin/env bash

string=$1

for (( i=0; i<${#string}; i++ )); do
  echo "hello"
done

# something like the below

if "A" || "E" || "I" || "O" || "U" || "L" || "" ||
  return 1
elif "D" || "G" 
  return 2
elif "B" || "C" || "M" || "P
  return 3
elif "F" || "H" || "V" || "W" || "Y" 
  return 4
elif "K"
  return 5
elif "J" || "X"
  return 8
elif "Q" || "Z" 
  return 10 
else
  return 0 
fi

# A, E, I, O, U, L, N, R, S, T	1
# D, G	2
# B, C, M, P	3
# F, H, V, W, Y	4
# K	5
# J, X	8
# Q, Z	10