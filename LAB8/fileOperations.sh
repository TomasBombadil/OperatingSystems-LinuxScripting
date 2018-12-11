#!/bin/bash

#Z1
Z1 () {
	if [[ ! -f $2 ]]; then
	       touch $2
	else 
		echo "" > $2
	fi

	if [[ ! -f $3 ]]; then
		touch $3
	else 
		echo "" > $3
	fi

	if [[ ! -w $2 ]]; then 
		printf "You don't have permissions to write to $2\n"
		exit -1 
	elif [[ ! -w $3 ]]; then 
		printf "You don't have permissions to write to $3\n"
		exit -1
	elif [[ ! -r $1 ]]; then
		printf "You have no permissions to read $1\n"
		exit -1
	else
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
	fi
}
#Z2 
createTree ()
{
	if [[ ! -d $1 ]]; then
		printf "Error: $1 is not a directory\n" 1>&2
		exit -1
	elif [[ ! -w $1 ]]; then
		printf "Error: You don't have permissions to write to $1\n" 1>&2
		exit -1
	elif [[ ! -f $2 ]]; then
		printf "Error: $2 is not a file or doesn't exists\n" 1>&2
		exit -1
	elif [[ ! -r $2 ]]; then
		printf "Error: You don't have permissions to read $2 \n" 1>&2
		exit -1 
	fi

		while IFS="" read -r p || [ -n "$p" ]
		do
			op=$(echo $p | cut -d':' -f 1)
			path=$(echo $p | cut -d':' -f 2)

			if [ $op = 'D' ]; then
				printf "Creating dir: $path\n"
				mkdir -p $path
			elif [ $op = 'F' ]; then
				printf "Creating file $path\n"
				touch $path
			fi	
		done < $2
}

# MAIN
#Z1 $1 $2 $3
createTree $1 $2
