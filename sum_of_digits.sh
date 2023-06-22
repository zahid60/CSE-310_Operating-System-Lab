read -p "Enter a number: " number

sum=0
i=0
while [ $number -gt 0 ]; do
sum=$((sum + number % 10))
number=$((number / 10))
i=$((i + 1))
done

echo "The sum of digits is: $sum"