#!/usr/bin/env bash

string="${1%"${1##*[![:space:]]}"}"

if [[ $string =~ ^[^a-z?]*$ ]] && [[ $string =~ [A-Z] ]]; then
    echo "Whoa, chill out!"
elif [[ $string =~ ^[^a-z0-9]*\?$ ]] && [[ $string =~ [A-Z] ]]; then
    echo "Calm down, I know what I'm doing!"
elif [[ $string =~ \?$ ]]; then
    echo "Sure."
elif [[ -z "${string//[$'\t\n\r ']}" ]]; then
    echo "Fine. Be that way!"
else
    echo "Whatever."
fi