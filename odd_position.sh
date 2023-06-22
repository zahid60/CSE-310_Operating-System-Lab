# Write a shell program to display odd position numbers (using For loop).

read -p "Enter the value of n : " n

for (( i=1; i<=n; i++ ))
do
    read -p "Enter the value of $i number : " num
    arr[$i]=$num
done

echo "Odd position numbers are : "
for (( i=1; i<=n; i++ ))
do
    if [ $((i%2)) -ne 0 ]
    then
        echo -n "${arr[$i]} "
    fi
done
