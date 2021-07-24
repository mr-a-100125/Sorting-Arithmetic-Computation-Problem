#!/bin/bash 
echo "Welcome to Sorting Arithmetic Computation Problem."

#reading a,b &c values.
read -p "Enter value for -> a : " a
read -p "Enter value for -> b : " b
read -p "Enter value for -> c : " c

declare -A resultDict
declare -a resultArr
pos=0

#result1 of a+b*c
result1=$(($a+$b*$c))
resultDict[a+b*c]=$result1

#result2 of a*b+c
result2=$(($a*$b+$c))
resultDict[a*b+c]=$result2

#result3 of c*a/b
result3=$(($c+$a/$b))
resultDict[c*a/b]=$result3

#result4 of a%b+c
result4=$(($a%$b+$c))
resultDict[a%b+c]=$result4

#Reading the values from dictionary to an array.
for values in ${resultDict[@]}
do
	resultArr[$pos]=$values
	pos=$(($pos+1))
done

#Sorting Array in Descening order.
for ((i=0; i<=$((${#resultArr[@]}-1)); i++))
do
	for ((j=0; j<$((${#resultArr[@]}-1)); j++))
	do
		if [ ${resultArr[i]} -lt ${resultArr[j]} ]
		then 
			temp=${resultArr[j]}
 			resultArr[$j]=${resultArr[i]}
 			resultArr[$i]=$temp
 		fi
 	done
done

for value in ${resultArr[@]}
do
	echo "$value"
done
