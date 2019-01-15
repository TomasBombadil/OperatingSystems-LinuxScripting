#!/bin/bash


# FUNCTIONS

# Z11.0
proc () 
{
	required=1
	provided=$#

	if [ $required -ne $provided ]; then
		printf "Required arguments: $required  | Provided args: $provided \n"
		exit 1
	elif [ $1 -le 0 ]; then
		printf "Number must be greater than 0 \n"
		exit 1	
	fi

	printf "Process $1 starts at $(date) \n"
	sleep $(( ( RANDOM % 101 ) )) 
	printf "Process $1 finishes at $(date) \n"
	exit 0
}

# Z11.1
runner ()
{
	required=1
	provided=$#

	if [ $required -ne $provided ]; then
		printf "Required arguments: $required  | Provided args: $provided \n"
		exit 1
	elif [ $1 -le 0 ]; then
		printf "Number must be greater than 0 \n"
		exit 1	
	fi
	
	for i in `seq 1 $1`
	do
		proc $i &
		pids[${i}]=$!
	done
	
	# ---------------------------------------
	# Killer test
	killer $(whoami) 'sleep' -L -9
	# --------------------------------------

	# Wait for all processes to finish	
	for pid in ${pids[*]}
	do
		wait $pid
	done
	printf "Runner finished \n"
}
# Z11.2
killer () 
{	
	printf "................................"
	printf "\nKilling processes of user $1 \n"
	printf "................................\n"
	user=$1
	processname=$2
	shift 2
	args="$@"
	echo ${args[@]}

	ps -au | grep -i $user | grep -i $processname | cut -d" " -f4 | while read pid; do
		
		kill $pid ${args[@]}	
	done	
}

# MAIN

#proc $1
runner $1

