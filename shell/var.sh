#!/bin/bash
name="zong"
echo "name:${name}"
echo "len:${#name}"
echo "substr:${name:1:3}"

string="runoob is a site"
# echo `expr index "${string}" io`

echo '注释:EOF可替换成其他符号'
echo '
:<<EOF
注释内容
EOF
'

