#!/bin/bash

# Prompt the user for the set of numbers
echo -n "Enter a set of numbers separated by spaces: "
read -a numbers

# Sort the numbers in ascending order
sorted_numbers=($(for number in "${numbers[@]}"; do echo $number; done | sort -n))

# The second highest number is the second last element in the sorted array

for((i=0;i<${#sorted_numbers[@]};i++)) ; do

echo ${sorted_numbers[i]}

done
second_highest=${sorted_numbers[-2]}

# Print the second highest number
echo "Second highest number: $second_highest"
