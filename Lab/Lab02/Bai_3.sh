#!/bin/bash
while true
do
	echo "Input n:"
	read n
	if [ $n -ge 10 ]
	then
		break
	fi
	echo "n is too small (<10), please try again."
done
ans=0
i=1
while [ $i -le $n ]
do
	ans=$(($ans+i))
	i=$(($i+1))
done
echo "Sum from 1 to n is: $ans"
