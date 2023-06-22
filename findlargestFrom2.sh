#!/bin/bash
findLargest() {
    if [ $1 -gt $2 ]; then
        echo $1
    else
        echo $2
    fi
}

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

largest=$(findLargest $num1 $num2)
echo "The largest number is: $largest"

