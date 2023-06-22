#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1

    # Check if the number is less than 2
    if (( num < 2 )); then
        return 1
    fi

    # Check for divisibility from 2 to the square root of the number
    for (( i = 2; i * i <= num; i++ )); do
        if (( num % i == 0 )); then
            return 1
        fi
    done

    return 0
}

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the number is prime
if is_prime "$number"; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi

