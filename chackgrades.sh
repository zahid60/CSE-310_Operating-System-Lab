#!/bin/bash

# Prompt the user to enter the student's marks
read -p "Enter the student's marks: " marks

# Determine the grade based on the marks using a switch case
case $marks in
    90|91|92|93|94|95|96|97|98|99|100)
        grade="A+"
        ;;
    80|81|82|83|84|85|86|87|88|89)
        grade="A"
        ;;
    70|71|72|73|74|75|76|77|78|79)
        grade="B"
        ;;
    60|61|62|63|64|65|66|67|68|69)
        grade="C"
        ;;
    50|51|52|53|54|55|56|57|58|59)
        grade="D"
        ;;
    *)
        grade="F"
        ;;
esac

# Print the grade
echo "The student's grade is: $grade"
