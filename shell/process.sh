#!/bin/bash

#if else
a=10
if [ $a == 10 ]
then
	echo $a
else
	echo 'no $a'
fi

# for循环
for loop in 1 2 3 4 5
do
	echo $loop
done

# while循环
i=0
while((i<10)); do
	let "i++"
	echo ${i}
done

# 无限循环
:<<EOF
while true; do
	echo 'loop'
done

或者

for ((;;))
EOF

# util语句
j=0
until ((j>10)); do
	let "j++"
	echo ${j}
done

# case语句
echo '输入1到4之间的数字：'
echo '你输入的数字为：'
read num
case $num in 
	1) echo '你选择了1';;
	2) echo '你选择了2';;
	3) echo '你选择了3';;
	4) echo '你选择了4';;
esac

# 跳出循环
# break语句
while true; do
	echo -n '输入1-5之间的数字'
	read num
	case $num in
		1|2|3|4|5) echo "你输入了$num";;
		*) 
			echo '你输入的不是1-5之间的数字，程序退出'
			break
		;;
	esac
done

#continue语句
while true; do
	echo -n '输入1-5之间的数字'
	read num
	case $num in
		1|2|3|4|5) echo "你输入了$num";;
		0)
			echo '程序结束'
			break
		;;
		*) 
			echo '你输入的不是1-5之间的数字，程序退出'
			continue
		;;
	esac
done

