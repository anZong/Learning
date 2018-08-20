#!/bin/bash
echo 'shell 传递参数实例：'
echo "执行文件名:$0"
echo "第一个参数:$1" 
echo "第一个参数:$2"  
echo "第一个参数:$3" 
echo "共$#个参数"
echo "所有参数:$*"
echo "所有参数:$@"
echo "脚本运行的当前进程ID:$$"
echo "后台运行的最后一个进程的ID号:$!"
echo "显示shell使用的当前选项:$-"
echo "最后命令的退出状态码:$?"

echo '$*和$@的区别:'
echo '$*:'
for i in "$*";
do
	echo ${i}
done

echo '$@:'
for i in "$@";
do 
	echo ${i}
done

