#!/bin/bash
#Program:
#   User input a filename ,program will check the following:
#   1）exist?  2)file/directory?  3)file permissions
#History:
#2016/04/02  wanggaobin  firset realease
PATH=$PATH
export PATH

#1,让用户输入文件名，并判断用户是否真的有输入字符串
echo -e "Please input a filename,I will check the filename's  type adn permission.\n\n"
read -p "Input a filename:" filename
test -z $filename && echo "You must input a filename"  && exit 0

#2，判断文件是否存在，若不存在则显示信息并结束脚本
test ! -e $filename && echo "The filename '$filename' do not exsit" && exit 0

#3,开始判断文件类型与属性
test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"

test -r $filename && perm="readable"
test -w $filename && perm="$perm writeble"
test -x $filename && perm="$perm exe"

#4，开始输出信息
echo  "The filename: $filename is a $filetype"
echo  "and the permissions are :$perm"
echo $0,$1,$2
