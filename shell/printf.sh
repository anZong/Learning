#!/bin/bash

printf '语法：printf format-string [args...]\n'

format_str="%-10s %-8s %-4s\n"
format_num="%-10s %-8s %-4.2f\n"
printf "$format_str" 姓名 性别 体重Kg
printf "$format_num" 郭靖 男 66.1234
printf "$format_num" 黄蓉 女 32.1234
printf "$format_num" 杨过 男 65.1234
printf "$format_num" 小龙女 女 35.1234