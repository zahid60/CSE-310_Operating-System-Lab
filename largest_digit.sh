#!/bin/bash


read -p "Enter a number: " number #123456 =6

largest=0

while [ $number -gt 0 ]; do
    digit=$((number % 10))

    if [ $digit -gt $largest ]; then
        largest=$digit
    fi
    number=$((number / 10))
done

# Display the largest digit
echo "The largest digit is: $largest"

