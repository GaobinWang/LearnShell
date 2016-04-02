#!/bin/bash
#Program:
#   Program shows the script name,parameters...
#Histotory:
#2016/04/02  wanggaobin  first release
PATH=$PATH
export PATH

echo "The script name is  ==> $0"
echo "Total parameter number is ==> $#"  
[ "$#" -lt 2 ]  && "The number of parameter  is less than 2. Stop here."  && exit 0
echo "Your whole parameter is ==> '$@'"
echo "The 1st parameter  ==>$1"
echo "The 2st parameter ==>$2"

