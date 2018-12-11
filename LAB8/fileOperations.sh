#!/bin/bash

if [[ ! -w $2 ]]; then 
	printf "You don't have permissions to write to $2\n"
elif [[ ! -w $3 ]]; then 
	printf "You don't have permissions to write to $3\n"

elif [[ -r $1 ]]; then

	echo "" > $2
	echo "" > $3


	i=1
	while IFS="" read -r p || [ -n "$p" ]
	do
		let isLineOdd=i%2
	
		if [ $isLineOdd -eq 1 ]; then
			printf "$i) %s\n" "$p" >> $2
		else
			printf "$i) %s\n" "$p" >> $3
		fi	
		let i++
	done < $1
else
	printf "You have no permissions to read $1\n"
fi
