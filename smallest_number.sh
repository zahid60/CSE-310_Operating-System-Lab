#Write a Shell program to find the smallest number from a set of numbers.
#!/bin/bash

# Prompt the user for the set of numbers
echo -n "Enter a set of numbers separated by spaces: "
read -a numbers

# Initialize the smallest number to the first number in the set
smallest=${numbers[0]}

# Iterate over the numbers and find the smallest number
for number in "${numbers[@]}"; do
  if [ $number -lt $smallest ]; then
    smallest=$number
  fi
done

# Print the smallest number
echo "Smallest number: $smallest"


