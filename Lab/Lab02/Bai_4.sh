#!/bin/bash

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
if [[ `grep $string $filename` != "" ]]
then 
	echo "$string exist in $filename"
else 
	echo "$string doesn't exist in $filename"
fi
exit 0
