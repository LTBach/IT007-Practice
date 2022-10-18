#!/bin/bash

echo "Nhap inputfile:"
read inputfile
echo "Nhap outputfile:"
read outputfile
echo "Nhap chuoi muon tim kiem trong $inputfile:"
read string
if [ ! -f $inputfile ]
then
	echo "Tap tin $inputfile khong ton tai" > $outputfile
elif [[ `grep $string $inputfile` != "" ]]
then 
	echo "Trong tap tin $inputfile co chuoi $string" > $outputfile
else 
	echo "Trong tap tin $inputfile khong co chuoi $string" > $outputfile
fi
exit 0
