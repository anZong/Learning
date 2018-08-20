#!/bin/bash

echo "数组："
array_name=(1 2 3 4 5 6)
echo '获取数组所有元素:${array_name[@]}'
for item in ${array_name[@]}
do
	echo ${item}
done
echo '获取数组元素个数：${#array_name[@]} or ${#array_name[*]}'
echo ${#array_name[@]}
echo '获取单个元素的长度：${#array_name[n]}'
echo ${#array_name[2]}