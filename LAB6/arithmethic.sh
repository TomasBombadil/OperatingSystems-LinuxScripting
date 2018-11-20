#!/bin/bash

required=2
provided=$#

#Z1
operation () {
	op1="$1-$2"
	op2="$1+$2"
	
	sub="$(echo $op1 | bc)"
	add="$(echo $op2 | bc)"
	div="$sub/$add"

	result="$(echo $div | bc -l)"
	echo "Z1 result: $result"
}

# MAIN
if [ $required -eq $provided ]; then
#Z1
	echo "starting\n"
	operation $1 $2	
else
	printf "\nRequired arguments: $required  | Provided args: $provided \n"

fi
