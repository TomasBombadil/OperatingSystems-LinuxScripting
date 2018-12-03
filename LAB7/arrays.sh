#!/bin/bash

arr1=($(for i in {0..9};do printf '0.%04d\n' $RANDOM; done))  #do echo $((RANDOM%100)); done))

insertSort () 
{
	arr=("$@")
	for((i=1;i<$#;i++))
	do
		ind=$(($i-1))
		tmp=${arr[$i]}
	while [ $tmp '<' ${arr[$ind]} | bc -l ] 		
	do
		arr[ind+1]=${arr[ind]}
		
		let ind--
		
		if [ $ind -eq -1 ]; then
			break
		fi
	done
	arr[ind+1]=$tmp
done
	echo ${arr[@]}
}

# MAIN
#Z1bash
echo ${arr1[@]}
insertSort ${arr1[@]}

