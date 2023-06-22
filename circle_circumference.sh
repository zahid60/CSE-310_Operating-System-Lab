#!/bin/bash

# radius from the user
read -p "Enter the radius of the circle: " radius

# Calculate the area and circumference
area=$(echo "scale=2; 3.14 * $radius * $radius" | bc)
circumference=$(echo "scale=2; 2 * 3.14 * $radius" | bc)

# Display results
echo "The area of the circle is: $area"
echo "The circumference of the circle is: $circumference"

