#!/bin/bash
#Program:
#      User inputs his first name  and last name.Program  shows his full name.
#History:
#2016/04/02  wanggaobin first release
PATH=/home/wanggaobin/code/LearnShell/Vbird
export PATH

read -p "Please input your first name:" firstname #提示用户输入
read -p "Please input you last name:" lastname #提示用户输入
echo -e "\nYour full name is: $firstname $lastname" #结果由屏幕输出
