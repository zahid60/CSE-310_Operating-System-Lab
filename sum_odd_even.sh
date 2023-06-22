#!/bin/bash

# set of numbers from the user
read -p "Enter a set of numbers (space-separated): " numbers

# Initialize variables for sum of odd and even numbers
sumOdd=0
sumEven=0

for num in $numbers; do
    # Check if the number is odd or even
    if ((num % 2 == 0)); then
        # Number is even, add it to the sum of even numbers
        sumEven=$((sumEven + num))
    else
        # Number is odd, add it to the sum of odd numbers
        sumOdd=$((sumOdd + num))
    fi
done

echo "Sum of odd numbers: $sumOdd"
echo "Sum of even numbers: $sumEven"

