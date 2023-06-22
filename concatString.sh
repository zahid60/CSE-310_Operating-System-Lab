#Write a shell Script to Concatenate Two Strings.

read -p "Enter the first string : " str1
read -p "Enter the second string : " str2

concat="$str1 $str2"

echo "The concatenated string is $concat"