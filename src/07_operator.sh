#!/bin/bash

# shell支持多种运算符
# 算数运算符
# 关系运算符
# 布尔运算符
# 字符串运算符
# 文件测试运算符

# ! 原生bash不支持简单的数学运算，但是可以通过调用其他命令来实现，例如 awk 和 expr，expr 最常用

# 注意加号左右要留有空格
sum=`expr 1 + 2`
echo $sum

# 算术运算符
a=10
b=20

echo "----算数运算符----"
val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b` # 部分特殊字符在反引号中调用时，需要转义
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

if [ $a == $b ] # 条件表达式要放在方括号之间，并且要有空格
then
   echo "a 等于 b"
fi # fi为if的逆序，代表if结束
if [ $a != $b ]
then
   echo "a 不等于 b"
fi

# 关系运算符
# ! 关系运算符只支持数字，不支持字符串，除非字符串的值是数字
# -eq 相等
# -ne 不相等
# -gt >
# -lt <
# -ge >=
# -le <=

echo "----关系运算符----"

if [ $a -eq $b ]
then
   echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi

if [ $a -ne $b ]
then
   echo "$a -ne $b: a 不等于 b"
else
   echo "$a -ne $b : a 等于 b"
fi

if [ $a -gt $b ]
then
   echo "$a -gt $b: a 大于 b"
else
   echo "$a -gt $b: a 不大于 b"
fi

if [ $a -lt $b ]
then
   echo "$a -lt $b: a 小于 b"
else
   echo "$a -lt $b: a 不小于 b"
fi

if [ $a -ge $b ]
then
   echo "$a -ge $b: a 大于或等于 b"
else
   echo "$a -ge $b: a 小于 b"
fi

if [ $a -le $b ]
then
   echo "$a -le $b: a 小于或等于 b"
else
   echo "$a -le $b: a 大于 b"
fi

# 布尔运算符
# ! 取反运算
# -o 或运算，用在[]中
# -a 与运算，用在[]中

echo "----布尔运算符----"
if [ $a != $b ]
then
   echo "$a != $b : a 不等于 b"
else
   echo "$a == $b: a 等于 b"
fi
if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a 小于 100 且 $b 大于 15 : 返回 true"
else
   echo "$a 小于 100 且 $b 大于 15 : 返回 false"
fi
if [ $a -lt 100 -o $b -gt 100 ]
then
   echo "$a 小于 100 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 100 或 $b 大于 100 : 返回 false"
fi
if [ $a -lt 5 -o $b -gt 100 ]
then
   echo "$a 小于 5 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 5 或 $b 大于 100 : 返回 false"
fi

# 逻辑运算符
# && 并且，含义同-a，只是用在[[]]中
# || 或，含义同-o，只是用在[[]]中
echo "----逻辑运算符----"
if [[ $a -lt 100 && $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi

if [[ $a -lt 100 || $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi

# 字符串运算符
# = 相等
# != 不相等
# -z 长度是否为0，为0返回true
# -n 长度是否不为0，不为0返回true
# $ 字符串是否为空，不为空返回true


c="abc"
d="efg"
echo "----字符串运算符----"
if [ $c = $b ]
then
   echo "$c = $d : c 等于 d"
else
   echo "$c = $d: c 不等于 d"
fi

if [ $c != $d ]
then
   echo "$c != $d : c 不等于 d"
else
   echo "$c != $d: c 等于 d"
fi

if [ -z $c ]
then
   echo "-z $c : 字符串长度为 0"
else
   echo "-z $c : 字符串长度不为 0"
fi

if [ -n $c ]
then
   echo "-n $c : 字符串长度不为 0"
else
   echo "-n $c : 字符串长度为 0"
fi

if [ $c ]
then
   echo "$c : 字符串不为空"
else
   echo "$c : 字符串为空"
fi

# 文件测试运算符
# -b file	检测文件是否是块设备文件，如果是，则返回 true。	[ -b $file ] 返回 false。
# -c file	检测文件是否是字符设备文件，如果是，则返回 true。	[ -c $file ] 返回 false。
# -d file	检测文件是否是目录，如果是，则返回 true。	[ -d $file ] 返回 false。
# -f file	检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。	[ -f $file ] 返回 true。
# -g file	检测文件是否设置了 SGID 位，如果是，则返回 true。	[ -g $file ] 返回 false。
# -k file	检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。	[ -k $file ] 返回 false。
# -p file	检测文件是否是有名管道，如果是，则返回 true。	[ -p $file ] 返回 false。
# -u file	检测文件是否设置了 SUID 位，如果是，则返回 true。	[ -u $file ] 返回 false。
# -r file	检测文件是否可读，如果是，则返回 true。	[ -r $file ] 返回 true。
# -w file	检测文件是否可写，如果是，则返回 true。	[ -w $file ] 返回 true。
# -x file	检测文件是否可执行，如果是，则返回 true。	[ -x $file ] 返回 true。
# -s file	检测文件是否为空（文件大小是否大于0），不为空返回 true。	[ -s $file ] 返回 true。
# -e file	检测文件（包括目录）是否存在，如果是，则返回 true。	[ -e $file ] 返回 true。

 