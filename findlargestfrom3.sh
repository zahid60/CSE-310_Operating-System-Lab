#!/bin/bash

# Prompt the user to enter three numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

# Assign the first number as the initial largest
largest=$num1

# Loop through each number and compare with the current largest
for num in $num2 $num3; do
    if [ $num -gt $largest ]; then
        largest=$num
    fi
done

# Print the largest number
echo "The largest number is: $largest"
