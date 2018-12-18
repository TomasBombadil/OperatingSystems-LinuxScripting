#!/bin/bash

# FUNCTIONS

checkArgs() 
{ 
	required=2

	if [ ! $required -eq $# ]; then
		printf "Required args: $required | Provided: $#\n" >&2
		exit -1
	elif [ ! -d $1 ]; then
		printf "$1 is not a directory or doesn't exists\n" >&2
		exit -1
	elif [ ! -r $1 ]; then
		printf "$1 is not readable\n" >&2
		exit -1
	elif [ ! -f $2 ]; then
		touch $2 
		r_code=$?

		if [ $r_code -eq 0 ]; then
			printf "Created file $2\n"
		else
			printf "Couldn't create file $2\n" >&2
			exit -1
		fi
		
		if [ ! -r $2 ]; then
			printf "$2 is not readable or doesn't exists\n" >&2
			exit -1
		fi	
	fi
}

bigestDirFile () 
{
	checkArgs $1 $2
	printf "x"

}

# MAIN
bigestDirFile $1 $2 
