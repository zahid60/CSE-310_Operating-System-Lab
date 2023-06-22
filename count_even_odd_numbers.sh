#!/bin/bash

# Prompt the user to enter the set of numbers
echo "Enter the set of numbers (separated by spaces):"
read -a numbers

# Initialize variables for even count and odd count
even_count=0
odd_count=0

# Loop through each number in the set
for number in "${numbers[@]}"; do
    # Check if the number is even or odd
    if (( number % 2 == 0 )); then
        even_count=$(( even_count + 1 ))
    else
        odd_count=$(( odd_count + 1 ))
    fi
done

# Print the counts of even and odd numbers
echo "Count of even numbers: $even_count"
echo "Count of odd numbers: $odd_count"

