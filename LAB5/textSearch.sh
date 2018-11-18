#!/bin/bash

required=1
provided=$#

if [ $required -eq $provided ]; then
#Z1
	printf "\nAll roman numbers (to X) in file:\n\n"
	grep -onP  '(^| +)([\+\-]?\d\d[_-])?(\d{3}(?P<sep>[-_]))(\d{3}\g{sep})(\d{3})(?=$| )' $1
#Z2
	printf "\nAll integers in file:\n\n"
	grep -onP  '(^|[ ]+)(\+|\-)?\d+(?=$|[ ])' $1
#Z3
	printf "\nAll phone numbers in file:\n\n"
	grep -onP  '(^| +)([\+\-]?\d\d[_-])?(\d{3}(?P<sep>[-_]))(\d{3}\g{sep})(\d{3})(?=$| )' $1
else
	printf "Required arguments: $required  | Provided args: $provided \n"

fi
