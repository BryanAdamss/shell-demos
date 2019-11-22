#!/bin/bash
 
# 流程控制

# if

# if condition
# then
#     command1 
#     command2
#     ...
#     commandN 
# fi

# 写成一行 if [ condition ]; then echo "true"; fi

# if else

# if condition
# then
#     command1 
#     command2
#     ...
#     commandN
# else
#     command
# fi

# if else-if else

# if condition1
# then
#     command1
# elif condition2 
# then 
#     command2
# else
#     commandN
# fi
echo "----if----"
a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

# for循环
# for var in item1 item2 ... itemN
# do
#     command1
#     command2
#     ...
#     commandN
# done

# 写成一行for var in item1 item2 ... itemN; do command1; command2… done;
echo "----for循环----"
for n in 1 2 3 4 5
do
    echo "The value is: $n"
done

# 另外一种for循环
for((i=1;i<=5;i++));do
    echo "这是第 $i 次调用";
done;

# while循环
# while condition
# do
#     command
# done
echo "----while循环----"
int=1
while [ $int -le 5 ]
do
    echo $int
    int=`expr $int + 1`
done

echo "----使用while读取输入----"
echo '按下 <CTRL-D> 退出'
echo -n "输入一个字符："
while read input
do
  echo "输入为$input"
done

# 无限循环
# while :
# do
#     command
# done
# 或者
# while true
# do
#     command
# done
# 或者
# for (( ; ; ))

# until 循环

echo "----until 循环----"
e=0

until [ ! $e -lt 10 ]
do
   echo $e
   e=`expr $e + 1`
done


# case
# case 值 in
# 模式1)
#     command1
#     command2
#     ...
#     commandN
#     ;;
# 模式2）
#     command1
#     command2
#     ...
#     commandN
#     ;;
# esac
echo "----case----"
echo '输入 1 到 4 之间的数字:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac

# break命令允许跳出所有循环（终止执行后面的所有循环）。
echo "----使用break跳出循环----"
while : # 死循环
do
    echo -n "输入 1 到 5 之间的数字:"
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            break # 返回到shell提示符下
        ;;
    esac
done