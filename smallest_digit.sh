#!/bin/bash

# # Prompt the user for a number
# echo -n "Enter a number: "
# read num

# # Initialize the smallest digit to the first digit of the number
# smallest=$(echo $num | cut -c1)

# # Iterate over each digit in the number
# for digit in $(echo $num | grep -o .); do
#   # Check if the current digit is smaller than the smallest digit
#   if [ $digit -lt $smallest ]
#   then
#     # If the current digit is smaller, update the smallest digit
#     smallest=$digit
#   fi
# done

# # Print the smallest digit
# echo "The smallest digit is: $smallest"

echo -n "Enter a number: "
read num 

small=$((num % 10))
num=$((num / 10))

while [ $num -gt 0 ]
do
    rem=$((num % 10))
    if [ $rem -lt $small ]
    then
        small=$rem
    fi
    num=$((num / 10))
done

echo "The smallest digit is: $small"
