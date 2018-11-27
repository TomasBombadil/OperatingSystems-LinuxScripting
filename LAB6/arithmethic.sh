#!/bin/bash

required=2
provided=$#

#Z1
operation () {
	op1="$1-$2"
	op2="$1+$2"
	
	sub="$(echo $op1 | bc)"
	add="$(echo $op2 | bc)"
	
if [ $add -ne 0 ]; then
	div="$sub/$add"

	result="$(echo $div | bc -l)"
	printf "(\$1-\$2)/(\$1+\$2): $result\n"

else 
	printf "\nNominal cannot be zero!\n"
	exit -1
fi
}
#Z2
recursiveFibbonacci () {
	funReq=1
	num1=$1;
	num2=		
	if [ $funReq-eq $#]; then

		if [ $num1 -le 0 ]; then
			printf 0
		elif [ $num1
	else
		printf "\nFunction required arguments: $required  | Provided args: $provided \n"
	exit -1
fi

}


# MAIN
if [ $required -eq $provided ]; then
#Z1
	#operation $1 $2	
#Z2
	recursiveFibbonacci $1 
else
	printf "\nRequired arguments: $required  | Provided args: $provided \n"
	exit -1
fi
