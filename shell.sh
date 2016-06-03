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

#数组赋值

array=('a' 'b' 'c' 'd')

#数组遍历

for item in ${array[@]}
do
    echo $item
done

#字符串拼接
str='abc'
str=${str}"def"
echo $str # abcdef
