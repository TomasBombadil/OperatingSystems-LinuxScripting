#!/bin/bash

arr=($(for i in {0..9}; do echo $((RANDOM%100)); done))

insertSort () {

	for((i=1;i<$#;i++))
	do
		let ind=$i-1
		tmp=${arr[$i]}
		echo "loop1"	
	while [ $tmp -lt ${arr[$ind]} ] 		
	do
		arr[$i]=${arr[$ind]}
		arr[$ind]=$tmp
		
		let ind--
		
		if [ $ind -eq -1 ]; then
			break
		fi
	done
done
	echo ${arr[@]}
}

# MAIN
#Z1bash
echo ${arr[@]}
insertSort ${arr[@]}

