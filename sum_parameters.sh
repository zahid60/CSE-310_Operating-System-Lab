#!/bin/bash

echo "Enter Size(N)"
read N

sum=0

echo "Enter Numbers"
for((i=1;i<=N;i++))
do
  read num           #get number
  sum=$((sum + num)) #sum+=num
done

echo "Sum: $sum"


#Sum of n numbers using for loop
