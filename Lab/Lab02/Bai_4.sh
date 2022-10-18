#!/bin/bash

function stringtoboolean() {
	if [ $# != 1 ]
	then 
		echo "Err: Number of parameter more than 1";
		exit 1
	fi
	
	case $1 in
		"") echo true;;
		*) echo false;;
	esac
}

while true
do
	echo "Input filename:"
	read filename
	if [ -f $filename ]
	then
		 break
	fi
	echo "$filename doesn't exist"
done
echo "Input string you want to find in $filename:"
read string
if [ $(stringtoboolean "$grep $string $filename") = "true" ]
then 
	echo "$string exist in $filename"
else 
	echo "$string doesn't exist in $filename"
fi
exit 0
