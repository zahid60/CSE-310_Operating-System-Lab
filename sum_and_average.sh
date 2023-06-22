sum=0
avg=0

echo "Enter the numbers: "
read -a numbers

for i in "${numbers[@]}"
do
    sum=$((sum + i))
done

avg=$(echo "scale=2; $sum / ${#numbers[@]}" | bc)

echo "Sum: $sum"
echo "Average: $avg"
