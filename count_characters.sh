#!/bin/bash

read -p "Enter a string: " inputString

countAlphabets=0
countDigits=0
countSpecial=0

for ((i=0; i<${#inputString}; i++)); do

    char="${inputString:i:1}"

    if [[ "$char" =~ [[:alpha:]] ]]; then
        countAlphabets=$((countAlphabets + 1))

    elif [[ "$char" =~ [[:digit:]] ]]; then
        countDigits=$((countDigits + 1))

    else
        countSpecial=$((countSpecial + 1))
    fi
done

echo "Total number of alphabets: $countAlphabets"
echo "Total number of digits: $countDigits"
echo "Total number of special characters: $countSpecial"

