#!/bin/bash

# 函数
# 定义；中括号代表可选
# [ function ] funname [()] 

# {

#     action;

#     [return int;]

# }

# 1、可以带function fun() 定义，也可以直接fun() 定义,不带任何参数。
# 2、参数返回，可以显示加：return 返回，如果不加，将以最后一条命令运行结果，作为返回值。 return后跟数值n(0-255
# 注意：所有函数在使用前必须定义。这意味着必须将函数放在脚本开始部分，直至shell解释器首次发现它时，才可以使用。调用函数仅使用其函数名即可

demoFn(){
    echo "my first function"
}

echo "----无return----"
demoFn # 调用时不需要使用()
echo "----无return 结束----"

# 有返回值
# 使用$?取得上一个命令的返回值
# $? 仅对其上一条指令负责，一旦函数返回后其返回值没有立即保存入参数，那么其返回值将不再能通过 $? 获得。
funWithReturn(){
    echo "这个函数会对输入的两个数字进行相加运算..."
    echo "输入第一个数字: "
    read aNum
    echo "输入第二个数字: "
    read anotherNum
    echo "两个数字分别为 $aNum 和 $anotherNum !"
    return $(($aNum+$anotherNum))
}

echo "----有return----"
funWithReturn
echo "输入的两个数字之和为 $?"
echo "----有return 结束----"

# 带参数
# 调用函数时可以向其传递参数。在函数体内部，通过 $n 的形式来获取参数的值，例如，$1表示第一个参数，$2表示第二个参数
# $10 不能获取第十个参数，获取第十个参数需要${10}。当n>=10时，需要使用${n}来获取参数
funWithParam(){
    echo "第一个参数为 $1 !"
    echo "第二个参数为 $2 !"
    echo "第十个参数为 $10 !"
    echo "第十个参数为 ${10} !"
    echo "第十一个参数为 ${11} !"
    echo "参数总数有 $# 个!"
    echo "作为一个字符串输出所有参数 $*"
}
echo "----带参数----"
funWithParam 1 2 3 4 5 6 7 8 9 34 73 # 传入参数
echo "----带参数 end----"