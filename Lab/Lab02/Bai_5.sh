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

echo "Nhap inputfile:"
read inputfile
echo "Nhap outputfile:"
read outputfile
echo "Nhap chuoi muon tim kiem trong $inputfile:"
read string
if [ ! -f $inputfile ]
then
	echo "Tap tin $inputfile khong ton tai" > $outputfile
elif [ $(stringtoboolean "$grep $string $inputfile") ]
then 
	echo "Trong tap tin $inputfile co chuoi $string" > $outputfile
else 
	echo "Trong tap tin $inputfile khong co chuoi $string" > $outputfile
fi
exit 0
