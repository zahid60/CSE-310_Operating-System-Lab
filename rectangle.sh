#!/bin/sh
echo "Enter the width and height of rectangle:"
read width 
read height 
echo "Area of the rectangle is:"
expr $width \* $height
