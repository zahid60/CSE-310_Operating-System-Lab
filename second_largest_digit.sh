#!/bin/bash
read -p "Enter a number: " number
# number=123456789
num_digits=0
digits=()

# extract each digit of the number
while [ $number -gt 0 ]; do
  digits[num_digits]=$((number % 10))
  number=$((number / 10))
  ((num_digits++))
done

# sort the array in descending order
for ((i = 0; i < num_digits; i++)); do
  for ((j = i + 1; j < num_digits; j++)); do
    if [ ${digits[i]} -lt ${digits[j]} ]; then
      temp=${digits[i]}
      digits[i]=${digits[j]}
      digits[j]=$temp
    fi
  done
done

# the second largest element is the second element in the sorted array
second_largest=${digits[1]}

echo "The second largest element is: $second_largest"
