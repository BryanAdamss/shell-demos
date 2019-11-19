#!/bin/bash
# shell脚本调用时，一定要指明路径
# 调用shell脚本时，必须使用./xxx.sh来调用，不能使用xxx.sh来调用
# 运行其它二进制的程序也一样；直接写 xxx.sh，linux 系统会去 PATH 里寻找有没有叫 xxx.sh 的，而只有 /bin, /sbin, /usr/bin，/usr/sbin 等在 PATH 里，你的当前目录通常不在 PATH 里，所以写成 xxx.sh 是会找不到命令的，要用 ./xxx.sh 告诉系统说，就在当前目录找。

echo "revoke way"