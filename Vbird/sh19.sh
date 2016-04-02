#/bin/bash
#Program:
#     Try do calculate 1+2+3...+${your_input}
#History:
# 2016/04/02  wanggaobin  first release
PATH=$PATH
export PATH

read -p  "Please input a number,I will count for 1+2+3...+your_input:" nu
echo $nu
for i in $(last | cut -d ' ' -f1 )
do
   echo $i
done


s=0
for  ( ( i=1 ; i<=$nu; i=i+1) ) 
do
      echo "hello world"
      s=$( ( $s + $i) )
done
echo  "The result of '1+2+3+...+$nu' is  ==> $s"
