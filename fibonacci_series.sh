#!/bin/bash

# Prompt the user for the number of terms
echo -n "Enter the number of terms: "
read n

# Initialize the first two terms of the series
a=0
b=1

# Print the first two terms
echo "$a"
echo "$b"

# Initialize the counter to 2
i=2

# Generate the Fibonacci series using a while loop
while [ $i -lt $n ]
do
  # Calculate the next term in the series
  c=$((a + b))

  # Print the next term
  echo "$c"

  # Update the values of a and b
  a=$b
  b=$c

  # Increment the counter
  i=$((i + 1))
done
