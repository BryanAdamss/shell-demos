#!/bin/bash
# 数据类型
# Shell是弱类型的语言，没有向C、java那样的强类型变量。都是弱类型变量。都会统一存储为字符串类型。
# 常用的字符串、数字、数组

# 字符串
# 字符串可以用单引号，也可以用双引号，也可以不用引号
test=333
name='gua${test}ngh' # 单引号中的内容会原样输出；
name2='123''456' # 单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用

name3="gua${test}ngh" # 双引号里可以有变量；双引号里可以出现转义字符
name4=gua${test}ngh

echo $name
echo $name2
echo $name3
echo $name4

# 拼接字符串
myName="tomabc"

# 使用双引号拼接
gretting="hello $myName!"
gretting2="hello ${myName}!"

echo $gretting , $gretting2

# 使用单引号拼接
gretting3='hello '$myName'!'

echo $gretting3  

# 获取字符串长度(变量前加#)
echo ${#myName}

# 提取子字符串
echo ${myName:2:3} # 从索引2开始，截取3个(包含索引2字符)

# 查找子字符串位置
# 查找字符 i 或 o 的位置(哪个字母先出现就计算哪个)：
string="runoob is a great site"
# ! 反引号，是用来执行外部脚本的，此处调用expr命令来查找索引
echo `expr index "${string}" io`  # 输出 4
