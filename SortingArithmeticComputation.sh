#!/bin/bash 
echo "Welcome to Sorting Arithmetic Computation Problem."

#reading a,b &c values.
read -p "Enter value for -> a : " a
read -p "Enter value for -> b : " b
read -p "Enter value for -> c : " c

#result2 of a*b+c
result2=$(($a*$b+$c))
echo "$result2"
