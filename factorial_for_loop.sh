#!/bin/bash

# Prompt the user for a number
echo -n "Enter a number: "
read num

# Initialize factorial to 1
factorial=1

# Calculate the factorial using a for loop
for ((i=1; i<=num; i++))
do
  factorial=$((factorial * i))
done

# Print the result
echo "The factorial of $num is: $factorial"
