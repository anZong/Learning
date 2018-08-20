#!/bin/bash

console(){
	echo 'console sth.'
	echo "参数:$1"
}

echo '输出函数：'
console
console zong

add(){
	echo '输入两个数进行加运算'
	echo '请输入第一个数:'
	read num1
	echo '请输入第二个数:'
	read num2
	return $(($num1+$num2))
}
add
echo "输入的两个数之和为：$?"