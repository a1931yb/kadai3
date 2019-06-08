#!/bin/bash

if [ $2 -gt $1 ];then
	dividended=$2
	divisor=$1
else
	dividended=$1
	divisor=$2
fi
remainder=1
while [ $remainder -ne 0 ];
do
	remainder=$(($dividended%$divisor));
	dividended=$divisor;
	divisor=$remainder;
done
echo $dividended
