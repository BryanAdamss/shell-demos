#!/bin/bash
 
# test的作用同[]类似
a=10
b=20

echo "----使用[]----"
if [ $a -eq $b ]
then
  echo "相等"
else
  echo "不相等"
fi

echo "----使用test----"

if test $a -eq $b
then
  echo "相等"
else
  echo "不相等"
fi