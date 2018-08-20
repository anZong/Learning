#!/bin/bash

# 算术运算符
val=`expr 2 + 2`
echo $val
a=10
b=20
echo "a:$a"
echo "b:$b"
val=`expr $a + $b`
echo "a + b = $val"
val=`expr $a - $b`
echo "a - b = $val"
val=`expr $a \* $b`	# 乘法，*号前必须加斜杠
echo "a * b = $val"
val=`expr $b / $a`
echo "b / a = $val"
val=`expr $a % $b`
echo "a % b = $val"

if [ $a == $b ]
then
	echo 'a == b'
fi

if [ $a != $b ]
then
	echo 'a != b'
fi

# linux中的表达式： `expr 表达式`
# mac中的表达式：$((表达式))
echo $(($a + $b))


# 关系运算符
if [ $a -eq $b ]
then
	echo 'a==b'
fi

if [ $a -ne $b ]
then
	echo 'a!=b'
fi

if [ $a -gt $b ]
then
	echo 'a>b'
fi

if [ $a -lt $b ]
then
	echo 'a<b'
fi

if [ $a -ge $b ]
then
	echo 'a>=b'
fi

if [ $a -le $b ]
then
	echo 'a<=b'
fi

:<<EOF
 布尔运算符
 !  非运算 [ !false ]  true
 -o 或运算 [ $a -lt 20 -o $b -gt 100 ] true
 -a 与运算 [ $a -lt 20 -a $b -gt 100 ] false
EOF

:<<EOF
逻辑运算符
&&  [[ $a -lt 100 && $b -gt 100 ]]
||  [[ $a -lt 100 || $b -gt 100 ]]
EOF

# 字符串运算符
:<<EOF
a='abc'
b='efg'

'a=b:' [ $a = $b ]
'a!=b:' [ $a != $b ]
'检测字符串长度是否为0:' [ -z $a ]
'检测字符串长度是否不为0:' [ -n $a ]
'检测字符串是否为空:' [ $a ]

# 文件测试运算符
'块设备:' [ -b $file ]
'字符设备:' [ -c $file ]
'目录:' [-d $file]
'普通文件:' [ -f $file ]
'是否是有名管道:' [ -p $file ]
'读:' [ -r $file ]
'写:' [ -w $file ]
'执行:' [ -x $file ]
'文件是否为空:' [ -s $file ]
'检测文件（目录）是否存在：'  [ -e $file ]
EOF

