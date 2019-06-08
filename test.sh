#!/bin/bash

if
	[ -n "$(echo "$1" | grep  '^[1-9][0-9]*$')" ] &&
	[ -n "$(echo "$2" | grep  '^[1-9][0-9]*$')" ]	
then
	result=$(./euclid.sh $1 $2)
	echo "The GCF of $1 and $2 is $result !"
	exit 0
else
	echo "Please input two numeric values except 0 !" 1>&2
	exit 1
fi
