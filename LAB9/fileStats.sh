#!/bin/bash

# FUNCTIONS
# Z1
charStats () 
{
 required=2
 if [ $required -eq $# ]; then

	 # We could leave here just ! -r
	if [ ! -f $1 ]; then
		printf "$1 doesn't exists\n" >&2
		exit -1	
	elif [ ! -r $1 ]; then
		printf "$1 is not readable\n" >&2
		exit -1
	elif [ ! -f $2 ]; then
		printf "$2 doesn't exists\n"
		touch $2
		code=$?
 
		if [ $code -eq 0 ]; then
			printf "Created file $2\n"
		else
			printf "Couldn't create a file\n" >&2
			exit -1
		       	# Here might be better to return $code
		fi
	elif [ ! -r $2 ]; then
		printf "$2 is not readable\n" >&2
	exit -1
	elif [ ! -w $2 ]; then
		printf "$2 is not writeable\n" >&2
		exit -1
	fi

	declare -A TEXTCHAR=( [a]=0 )

	text="$(cat $1)"
	while read -n1 char; do
		charFound=false
		for val in "${!TEXTCHAR[@]}"; do
			if [[ $val == $char ]]; then
				((TEXTCHAR[$val]++))
				charFound=true
			fi
		done
		
		if [ "$charFound" = false ] && [ ! -z $char ]; then
			TEXTCHAR[$char]='1'
		fi

	done < <(printf "$text")

	printf "Characters statistics\n" > $2	
	for val in "${!TEXTCHAR[@]}"; do 
		printf "[$val] ${TEXTCHAR[$val]}\n" >> $2 
	done | sort -rn -k2

 else
	 printf "Required args: $required | provided: $#\n" >&2
	 exit -1
 fi

}

# MAIN

charStats $1  $2

