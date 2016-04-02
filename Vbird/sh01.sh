#!/bin/bash
#Program:
#      This program shows "hello world!" in your screen
#History:
#2005/08/23  wanggaobin  First release
PATH=$PATH
export PATH
echo "Hello World! \a \n"
exit 0 #改程序执行完了之后，在命令行中输入echo $?  若返回为0，则说明程序执行成功了；但让我们也可以用exit n 的功能来自定义错误信息
