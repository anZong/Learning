#!/bin/bash
echo i am zong
echo '"i am zong"'

echo '显示换行:'
echo -e "ok!\nhello" # -e 开启转义 \n换行
echo '不显示换行:'
echo -e "ok! hello \c" # \c 不换行
echo '显示结果定向至文件' > file.txt

echo `date`