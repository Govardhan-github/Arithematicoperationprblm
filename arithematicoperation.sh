#!/bin/bash -x
read -p "Enter first number :: " a
read -p "Enter second number :: " b
read -p "Enter third number :: " c
result[1]=$((a+(b*c)))
result[2]=$(((a*b)+c))
result[3]=$((c+(a/b)))
result[4]=$(((a%b)+c))
echo "a+b*c = ${result[1]}"
echo "a*b+c = ${result[2]}"
echo "c+a/b = ${result[3]}"
echo "a%b+c = ${result[4]}"
for((i=0; i<=${#result[@]}; i++))
do 
		r[$i]=${result[$i]}

done
echo sorted array result : ${r[@]}
echo "sorted in descending order : "
for((i=0; i<=${#r[@]}; i++))
do
	echo "${r[i]}"
done | sort -nr
echo "sorted in ascending order : "
for((i=0; i<=${#r[@]}; i++))
do
   echo "${r[i]}"
done | sort -n
