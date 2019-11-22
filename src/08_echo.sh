#!/bin/bash
 
# 显示普通字符串
echo "It is a test"
echo It is a test # 双引号可以省略

# 显示转义字符
echo "\"It is a test\""

# 显示换行
echo "----显示换行----"
# echo -e 处理特殊字符若字符串中出现以下字符，则特别加以处理，而不会将它当成一般文字输出
# \a 发出警告声；
# \b 删除前一个字符；
# \c 最后不加上换行符号；
# \f 换行但光标仍旧停留在原来的位置；
# \n 换行且光标移至行首；
# \r 光标移至行首，但不换行；
# \t 插入tab；
# \v 与\f相同；
# \\ 插入\字符；
# \nnn 插入nnn（八进制）所代表的ASCII字符；
echo -e "OK! \n" # -e 开启转义
echo "It is a test"

# 显示不换行
echo "----显示不换行----"
echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"

# 显示结果定向至文件
echo "----显示结果定向输入至文件----"
echo "It is a test" > myfile

# 原样输出字符串，不进行转义或取变量(用单引号)
echo "----原样输出字符串，不进行转义或取变量(用单引号)----"
echo '$name\"'
# 显示命令执行结果
echo "----显示命令执行结果----"
echo `date` # 使用反引号调用命令

echo "----不换行输出----"
echo -n "123"
echo "456" # 最终输出123456
