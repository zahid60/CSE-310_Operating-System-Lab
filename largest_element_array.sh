#!/bin/bash
echo -n "Enter a set of numbers separated by spaces: "
read -a elements
# define the array of elements
# elements=(3 7 4 9 5 6 1 2 8)

# initialize the largest element to the first element of the array
largest=${elements[0]}

# loop through the rest of the elements
for element in "${elements[@]:1}"; do
  # update the largest element if the current element is larger
  if [ $element -gt $largest ]; then
    largest=$element
  fi
done

# print the largest element
echo "The largest element is: $largest"
