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
		
	elif [ ! -r $2 ]; then
			printf "$2 is not readable or doesn't exists\n" >&2
			exit -1
	elif [ ! -w $2 ]; then
		
		printf "$2 is not writeable\n" >&2	
		exit -1	
	fi
}

checkArgs2() 
{ 
	required=3

	if [ ! $required -eq $# ]; then
		printf "Required args: $required | Provided: $#\n" >&2
		exit -1
	elif [ ! -d $1 ]; then
		printf "$1 is not a directory or doesn't exists\n" >&2
		exit -1
	elif [ ! -r $1 ]; then
		printf "$1 is not readable\n" >&2
		exit -1
	elif [ ! -d $3 ]; then
		mkdir $3 
		r_code=$?

		if [ $r_code -eq 0 ]; then
			printf "Created dir $3\n"
		else
			printf "Couldn't create dir $3\n" >&2
			exit -1
		fi
		
	elif [ ! -r $3 ]; then
			printf "$3 is not readable or doesn't exists\n" >&2
			exit -1
	elif [ ! -w $3 ]; then
		
		printf "$3 is not writeable\n" >&2	
		exit -1	
	fi
}
#Z1
3bigestFiles () 
{
	checkArgs $1 $2
	find $1 -type f -exec du -Sh {} + | sort -rh | head -3 > $2
}
#Z2
copyFilesWithExtension ()
{
	checkArgs2 $1 $2 $3
	find $1 -name "*$2" | while IFS= read -r file; 
	do
		filename=$(basename $file)
		printf "$filename\n"
		cp -v "$filename" "$3/$(echo $filename | cut -d. -f1).COPY" 
	done	
}
#Z3
findFilesWithMultipleLinks ()
{
	checkArgs $1 $2
	find $1 -links +1 -type f -printf '%i %p\n' | sort -u -t' ' -k1,1 > $2

}

# MAIN
#3bigestFiles $1 $2 
#copyFilesWithExtension $1 $2 $3
findFilesWithMultipleLinks $1 $2
