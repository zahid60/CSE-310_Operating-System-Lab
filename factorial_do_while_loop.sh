#!/bin/bash

# Prompt the user for a number
echo -n "Enter a number: "
read num

# Initialize factorial to 1
factorial=1

# Initialize counter to 1
i=1

# Calculate the factorial using a do-while loop
while true
do
  # Check if the counter has reached the number
  if [ $i -gt $num ]
  then
    # If the counter has reached the number, exit the loop
    break
  fi

  # Multiply the factorial by the counter
  factorial=$((factorial * i))

  # Increment the counter
  i=$((i + 1))
done

# Print the result
echo "The factorial of $num is: $factorial"
