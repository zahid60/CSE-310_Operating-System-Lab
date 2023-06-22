#!/bin/bash

# Prompt the user to enter the number of elements
read -p "Enter the number of elements: " num_elements

# Initialize an array to store the numbers
numbers=()

# Read the numbers from the user
for (( i = 0; i < num_elements; i++ )); do
    read -p "Enter the number: " num
    numbers+=($num)
done

# Sort the array in descending order
sorted_numbers=($(printf "%s\n" "${numbers[@]}" | sort -rn))

# Calculate the sum of the 2nd highest and 3rd highest numbers
sum=$((sorted_numbers[1] + sorted_numbers[2]))

# Print the result
echo "The sum of the 2nd highest and 3rd highest numbers is: ${sorted_numbers[1]} + ${sorted_numbers[2]} = $sum"

