#!/bin/bash

arr1=($(for i in {0..9};do printf '0.%04d\n' $((RANDOM%100)); done))  #do echo $((RANDOM%100)); done))

#Z1
insertSort () 
{
	arr=("$@")
	for((i=1;i<$#;i++))
	do
		ind=$(($i-1))
		tmp=${arr[$i]}
		
		while [ $(echo "$tmp < ${arr[$ind]}" | bc -l) -eq "1" ]
		do
			arr[ind+1]=${arr[ind]}
		
			let ind--
		
			if [ $ind -eq -1 ]; then
				break
			fi
		done
		arr[ind+1]=$tmp
	done
	showArray ${arr[@]}
}
#Z2
random2DArray () 
{
	required=2
	op=$(echo "$1 > 0" | bc)

if [ $required -ne $# ]; then
	printf "Required arguments: $required  | Provided args: $provided \n"

elif [ $1 -gt "0" ] && [ $2 -gt 0 ]; then

	declare -A matrix
	
	echo
	for ((i=1;i<=$1;i++)) do
    	
		for ((j=1;j<=$2;j++)) do
			matrix[$i,$j]=$((RANDOM%20))

			printf "|%2s" ${matrix[$i,$j]}
		done
		echo
	done

else
	printf "\nArguments must be greater than 0\n"
	exit 1
fi
}

showArray ()
{
	arr=("$@")
	IFS="|$IFS"; printf '\n%s\n' "${arr[*]}"; IFS="${IFS:1}"
}

# MAIN
#Z1
printf "Z1:\nInitArray (size 10):"
showArray ${arr1[@]}
printf "SortedArray: "
insertSort ${arr1[@]}
#Z2
printf "\nZ2:\n"
random2DArray $1 $2
