#!/usr/bin/env bash

# if ? is used at the end of the sentence / if ? is present, reply "Sure."

if [[ $1 =~ ^[A-Z]+$ ]] && [[ $1 =~ "?" ]]; then 
    echo "Calm down, I know what I'm doing!"
elif [[ $1 =~ "?" ]]; then
    echo "Sure."
elif [[ $1 =~ ^[A-Z]+$ ]] && [[ ! $1 =~ "?" ]]; then
    echo "Whoa, chill out!"
elif [[ -z "${1// }" ]]; then
    echo "Fine. Be that way!" 
elif [[ $1 =~ ^[A-Z]+$ ]] && [[ $1 =~ "?" ]]; then 
    echo "Calm down, I know what I'm doing!"
else
    echo "Whatever."
fi
