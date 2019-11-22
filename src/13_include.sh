#!/bin/bash

# shell可以包含外部文件

# . filename   # 注意点号(.)和文件名中间有一空格
# 或
# source filename

. ./00_hello-world.sh   # 引用外部文件

echo "from $0"