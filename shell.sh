#!/bin/bash
name=$1
if [ $name ]
then
	echo "name:"$name
else
	echo 'miss name'
fi

echo "pid:"$$
echo "params:"$@
echo "params length:"$#
echo "code:"$?