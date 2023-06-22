#!/bin/bash

read -p "Enter the length of side 1: " side1
read -p "Enter the length of side 2: " side2
read -p "Enter the length of side 3: " side3

# Check the validity of the triangle
if [ $((side1 + side2)) -gt $side3 ] && [ $((side2 + side3)) -gt $side1 ] && [ $((side1 + side3)) -gt $side2 ]; then
    echo "The triangle is valid."
else
    echo "The triangle is not valid."
fi

