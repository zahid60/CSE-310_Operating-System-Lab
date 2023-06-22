#!/bin/bash

# Prompt the user for the coefficients of the quadratic equation
echo -n "Enter the coefficient of x^2: " #1
read a
echo -n "Enter the coefficient of x: " #5
read b
echo -n "Enter the constant term: " #6
read c

# Calculate the roots of the quadratic equation
root1=$(echo "scale=2; (-$b + sqrt($b^2 - 4*$a*$c)) / (2 * $a)" | bc )
root2=$(echo "scale=2; (-$b - sqrt($b^2 - 4*$a*$c)) / (2 * $a)" | bc )

# Print the roots
echo "Root 1: $root1"
echo "Root 2: $root2"
