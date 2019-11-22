#!/bin/bash

# 大多数 UNIX 系统命令从你的终端接受输入并将所产生的输出发送回​​到您的终端。一个命令通常从一个叫标准输入的地方读取输入，默认情况下，这恰好是你的终端。同样，一个命令通常将其输出写入到标准输出，默认情况下，这也是你的终端

# command > file	将输出重定向到 file。
# command < file	将输入重定向到 file。
# command >> file	将输出以追加的方式重定向到 file。
# n > file	将文件描述符为 n 的文件重定向到 file。
# n >> file	将文件描述符为 n 的文件以追加的方式重定向到 file。
# n >& m	将输出文件 m 和 n 合并。
# n <& m	将输入文件 m 和 n 合并。
# << tag	将开始标记 tag 和结束标记 tag 之间的内容作为输入。（Here Document）

# 输出重定向
# command1 > file1

# who > users 将命令who的输出重定向到users文件中，覆盖
# 执行后，并没有在终端输出信息，这是因为输出已被从默认的标准输出设备（终端）重定向到指定的文件
# who >> users ，同>一样，只是会追加

# 输入重定向(从特定位置读取输入)
# command1 < file1
# wc -l < users 从users文件中读取数据，并使用wc检查行数

# 同时重定向输入、输出
# command < infile > outfile
# 从infile中读取内容，并执行command，结果输出到outfile中

# 文件描述符 0 通常是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）
# 一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：

# 标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
# 标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
# 标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。

# 默认情况下，command > file 将 stdout 重定向到 file，command < file 将stdin 重定向到 file。

# 如果希望 stderr 重定向到 file，可以这样写：
# command 2 > file  # 2代表stderr(错误文件)

# 如果希望将 stdout 和 stderr 合并后重定向到 file
# command > file 2>&1           # 覆盖file
# command >> file 2>&1          # 追加到file


# Here Document
# Here Document 是 Shell 中的一种特殊的重定向方式，用来将输入重定向到一个交互式 Shell 脚本或程序。

# 它的基本的形式如下,将delimiter之间内容做为输入传入到command
# command << delimiter
#     document
# delimiter

# 统计EOF之间的行数
# wc -l << EOF  
#     欢迎来到
#     菜鸟教程
#     www.runoob.com
# EOF


# 如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null：
# command > /dev/null
# /dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到"禁止输出"的效果

# 如果希望屏蔽 stdout 和 stderr，可以这样写
# command > /dev/null 2>&1   # 将输出和错误合并重定向到/dev/null文件中，/dev/null中的内容会被丢弃