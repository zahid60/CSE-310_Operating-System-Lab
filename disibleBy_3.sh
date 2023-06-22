#!/bin/bash

# Initialize sum to 0
sum=0

# Iterate over all numbers between 50 and 100
for i in {50..100}
do
  # Check if the number is divisible by 3 and not divisible by 5
  if [ $((i % 3)) -eq 0 ] && [ $((i % 5)) -ne 0 ]
  then
    # If the number is divisible by 3 and not divisible by 5, add it to the sum
    sum=$((sum + i))
  fi
done

# Print the sum
echo "The sum is: $sum"
