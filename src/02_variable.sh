#!/bin/bash

# shell变量名规则
# 命名不能出现$
# 命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
# 中间不能有空格，可以使用下划线（_）。
# 不能使用标点符号。
# 不能使用bash里的关键字（可用help命令查看保留关键字）。

# !等号左右不能有空格
TEST=3
CONST_VAR=4
_var=5
var2=6

# 通过在变量前面添加$,来获取变量值
echo $TEST,$CONST_VAR,$_var,$var2

name="hahaha"
# 也可以在变量两侧添加花括号来使用变量
echo ${name}

# 加不加花括号都行，加花括号是为了帮助解释器识别变量的边界
# 推荐给所有变量加上花括号，这是个好的编程习惯
for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill}Script"
done


# 已定义的变量，可以被重新定义
# 第二次定义时，变量名不能携带$，$只有在使用变量时，才需要添加
your_name="tom"
echo ${your_name}
your_name="alibaba"
echo ${your_name}

# 只读变量
readonly myURL="http://www.baidu.com"

myURL="test.com" # 会报错


# 删除变量
# unset 命令不能删除只读变量
xxx="test"
echo $xxx
unset xxx # 删除，注意删除时，变量名不能携带$，只有在获取变量值时才需要加$
echo $xxx # 此句无输出

# 变量类型
# 运行shell时，会同时存在三种变量
# 1) 局部变量 在shell文件、命令中定义的，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
# 2) 环境变量 path中定义的，所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
# 3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行