#!/bin/bash


# FUNCTIONS

# Z 12.0
prepare () {
	export lockfile="./lock"
	export bufferFile="./buffer"
	if [ -f $bufferFile ]; then
		rm $bufferFile
	fi
	touch $bufferFile
}

randomNumber () {
	let res=$(( ( RANDOM % 5) ))
	let res++
	printf $res
}
lock () {
	while [ -f $lockfile ]; do
		sleep 1
	done

	touch $lockfile
}
unlock () {
	rm $lockfile
}
producer () {
	
	required=2
	provided=$#

	if [ $required -ne $provided ]; then
		printf "Required arguments: $required  | Provided args: $provided \n" >&2
			exit 1
	elif [ $1 -le 0 ] && [ $2 -le 0 ]; then 
		printf "All args must be greater than 0 \n" >&2
		exit 1	
	fi

	for i in `seq 1 $2`
	do
		toSleep=$(randomNumber)
		lock 
		
		product="Producer $1 produces number $toSleep \n"
		printf "$product"
		printf "$product" >> $bufferFile
		sleep $toSleep
	
		unlock	
	done	
}

consumer () {

	required=2
	provided=$#

	if [ $required -ne $provided ]; then
		printf "Required arguments: $required  | Provided args: $provided \n" >&2
			exit 1
	elif [ $1 -le 0 ] && [ $2 -le 0 ]; then 
		printf "All args must be greater than 0 \n" >&2
		exit 1	
	fi

	retries=0
	while :
	do
		lock
		buffSize=$(wc -l $bufferFile | cut -d' ' -f1)

		if [ $buffSize -gt 0 ]; then
			line=$(tail -1 $bufferFile)
			sed -i '$ d' $bufferFile
			printf "Consumer $1 consumes $line \n"
			retries=0
			sleep $(randomNumber)
		else
			printf "Consumer $1: Nothing to read!\n"
			let retries++
		fi
		unlock

		if [ $retries -ge $2 ]; then
			printf "Max number of retries has been reached!\n"
			break
		fi
		toSleep=$(randomNumber)
		sleep $toSleep
	done
}

runner () {
	required=4
	provided=$#

	if [ $required -ne $provided ]; then
			printf "Required arguments: $required  | Provided args: $provided \n" >&2
			exit 1
		elif [ $1 -le 0 ] && [ $2 -le 0 ] && [ $3 -le 0 ] && [ $4 -le 0 ]; then
			printf "All args must be greater than 0 \n" >&2
			exit 1	
	fi
	
	for i in `seq 1 $1`; do
		producer $i $2 &
		producersPids[${i}]=$!
	done

	for i in `seq 1 $3`; do
		consumer $3 $4 &
		consuersPids[${i}]=$!	
	done

	for pid in ${producersPids[*]}
	do
		wait $pid
	done

	for pid in ${consumersPids[*]}
	do
		wait $pid
	done
	printf "Runner finished!!\n"

}

# MAIN

prepare
runner 5 5 3 3
