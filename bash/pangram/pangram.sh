#!/usr/bin/env bash

# the submission is entered by the user
string=$*
submission="${string^^}" # turn to upper case 

if [[ "$(echo "$submission" | grep -o '[A-Z]' | sort -u | tr -d '\n')" == "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ]]; then
    echo "true"
else
  echo "false"
fi 