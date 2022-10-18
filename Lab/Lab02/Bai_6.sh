#!/bin/bash

arr30=(4 6 9 11)
echo "Nhap nam:"
read year
echo "Nhap thang:"
read month
echo "Nhap tep tin luu ket qua:"
read outputfile
if [ $year -le 1900 ] 
then
	echo "Nam khong hop le" > $outputfile
elif [[ $month -le 0 || $month -gt 12 ]]
then
	echo "Thang khong hop le" > $outputfile
elif [ $month -eq 2 ]
then
	if [[ $(($year % 400)) -eq 0 ]] || [[ $(($year % 4)) -eq 0 && $(($year % 100)) -ne 0 ]]
	then
		echo "29" > $outputfile
	else
		echo "28" > $outputfile
	fi
elif [[ " ${arr30[*]} " =~ " ${month} " ]]
then	
	echo "30" > $outputfile
else
	echo "31" > $outputfile
fi
