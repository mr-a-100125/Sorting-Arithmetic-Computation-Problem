#!/bin/bash 
echo "Welcome to Sorting Arithmetic Computation Problem."

#reading a,b &c values.
read -p "Enter value for -> a : " a
read -p "Enter value for -> b : " b
read -p "Enter value for -> c : " c

#result1 of a+b*c
result1=$(($a+$b*$c))
echo "$result1"

#result2 of a*b+c
result2=$(($a*$b+$c))
echo "$result2"

#result3 of c*a/b
result3=$(($c+$a/$b))
echo "$result3"

#result4 of a%b+c
result4=$(($a%$b+$c))
echo "$result4"
