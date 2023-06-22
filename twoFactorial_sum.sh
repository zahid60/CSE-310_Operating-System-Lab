#!/bin/bash

# Function to calculate the factorial of a number
factorial() {
    local num=$1
    local fact=1

    for (( i = 2; i <= num; i++ )); do
        fact=$(( fact * i ))
    done

    echo $fact
}

# Function to calculate the sum of two numbers
sum() {
    local num1=$1
    local num2=$2
    local total=$(( num1 + num2 ))

    echo $total
}

# Prompt the user to enter two numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Calculate the factorial of the first number
fact1=$(factorial $num1)

# Calculate the factorial of the second number
fact2=$(factorial $num2)

# Calculate the sum of the two numbers
total=$(sum $num1 $num2)

# Print the factorial of the numbers and their sum
echo "Factorial of $num1 is $fact1"
echo "Factorial of $num2 is $fact2"
echo "$fact1 + $fact2 = $total"

