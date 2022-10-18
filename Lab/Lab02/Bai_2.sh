#!/bin/bash
while true
do 
	echo "Input Ten:"
	read ten
	echo "Input MSSV:"
	read mssv
	if [ $ten == "LuongToanBach" ] && [ $mssv == "21521845" ]
	then 
		break
	fi
	echo "Sorry, ten or mssv wrong, plese try again"
done 
echo "Ten cua ban la: $ten"
echo "Ma so sinh vien cua ban la: $mssv"
exit 0
