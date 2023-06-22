# Write a Shell program to check the given integer is Armstrong number or not.

read -p "Enter the value of n : " n
temp=$n
sum=0
while [ $n -gt 0 ]
do
    rem=$((n%10))
    sum=$((sum+rem*rem*rem))
    n=$((n/10))
done
if [ $temp -eq $sum ]
then
    echo "$temp is an Armstrong number"
else
    echo "$temp is not an Armstrong number"
fi
