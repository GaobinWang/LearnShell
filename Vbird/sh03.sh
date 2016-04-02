#/bin/bash
#Program:
#   Program creates three files ,which named by user's input
#   and date command.
#History :
#2016/04/02  wanggaobin  firsr release
PATH=$PATH
export PATH

#1,让用户输入文件名，并获取fileuser这个变量
echo -e "I will use 'touch' command to create 3 files." #存粹显示信息
read -p "Please input your filename:" fileuser #提示用户输入 

#2，为了避免用户随意按【Enter】,利用变量功能分析文件名是否有设置
filename=${fileuser:-"filename"}  #开始判断有否配置文件名
echo filename,$filename
echo fileuser,$fileuser

#3,开始利用date命令来取得所需要的文件名了
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

#4，创建文件名
touch "$file1"
touch "$file2"
touch "$file3"
