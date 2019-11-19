#!/bin/bash

# 只支持一维数组，圆括号表示，数组item用空格分割；不会限制数组长度
arr=("a" "bbbbbb" "c" "d")

# 单独定义
arr2[0]="a"
arr2[1]="b"
arr2[20]="20"

# 读取
# 单个元素，使用${arrName[下标]}
echo ${arr[0]}
echo ${arr2[20]}
# 所有元素，使用${arrName[@]}
echo ${arr[@]}
echo ${arr2[@]}

# 数组长度
echo ${#arr[@]}
echo ${#arr[*]}

# 获取数组单个元素的长度
echo ${#arr[1]}
