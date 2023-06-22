#!/bin/bash

# Prompt the user for a number
echo -n "Enter a number: "
read num

# Initialize factorial to 1
factorial=1

# Initialize counter to 1
i=1

# Calculate the factorial using a while loop
while [ $i -le $num ]
do
  factorial=$((factorial * i))
  i=$((i + 1))
done

# Print the result
echo "The factorial of $num is: $factorial"
