#!/bin/bash

arr1=($(for i in {0..9};do printf '0.%04d\n' $((RANDOM%100)); done))  #do echo $((RANDOM%100)); done))

insertSort () 
{
	arr=("$@")
	for((i=1;i<$#;i++))
	do
		ind=$(($i-1))
		tmp=${arr[$i]}

		comp=$(echo $tmp '<' ${arr[$ind]} | bc -l)
		
		showArray ${arr[@]}	
		while [ $comp -eq "1" ] 		
		do
			printf "\nComparing| $tmp < ${arr[$ind]}"
			arr[ind+1]=${arr[ind]}
		
			let ind--
		
			if [ $ind -eq -1 ]; then
				break
			fi
		done
		arr[ind+1]=$tmp
	done
	printf "\nEnd\n"
	showArray ${arr[@]}
}
showArray ()
{
	arr=("$@")
	IFS="|$IFS"; printf '\n%s\n' "${arr[*]}"; IFS="${IFS:1}"
}

# MAIN
#Z1
printf "Start:\n"
#showArray ${arr1[@]} 
insertSort ${arr1[@]}

