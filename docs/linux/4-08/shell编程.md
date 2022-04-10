

# shell编程


变量

环境变量
系统级别
用户定义级别
export
. 


自定义变量


环境变量与自定义变量的区别
最本质的区别在于作用范围不同
环境变量作用于当前shell和子shell中有效
自定义变量作用于当前shell




变量
1.显示赋值
key=value



2.键盘读入
read key

3.






basename命令
dirname命令
exit;退出







字符串的操作
1、获取字符串的长度

2、字符串的截取

3、字符串的替换


${#string}






# shell编程







echo 
print
printf




认识与学习bash


内建命令--type




常见的环境变量
SHELL
UID




shell的执行
加载bash的相关环境配置文件，



# if条件语句


条件判断


文件判断
test = []

> 因为[]在bash中多个地方出现，
不同的地方含义可能不一样，bash通配符和正则表达式

在测试判断时，中括号内侧的两端需要有空格，必不可少


在条件判断时，一个等号，与两个等号的效果是一样的，只不过习惯上，一个等号用来表示赋值，两个等号用来表示判断

在中括号内的每个组件都要用空格分割，变量最好用${}括起来，常量最好使用引号括起来--单引号，双引号均可


单个条件

多个条件--逻辑判断
&&：且
||：或
!:非





- -e：是否存在
- -f：是否是普通文件


字符判断
- -z：是否为空
- -n：是否不为空



if语句
case语句
for语句
while...do语句


前20天的课程




bash编程之数组和字符串



函数
函数的定义的两种方式

方法一：
function f_name{

}

方法二:
f_name(){

}

$1,$2...$@



debug




数组

声明
declare -a array_name：
declare -A arary_name：关联数组

数组的赋值
array_name=(value1,value2)

array_name=([0]=value1 [2]=value2)

键盘输入数组
read -a 


数组元素的引用
$array_name[index]

获取数组的长度
${#array_name[*]}
${#array_name[@]}

#表示统计的意思
@表示所有

$@:获取参数列表
$#:参数的个数






bash如何生成随机数
> bash默认有一个$RANDOM的变量，默认范围是0-32767



set命令是什么作用


```bash
#!/bin/bash


declare -a nums;

for i in {1..10};do
${nums[i]}=$RANDOM;
done;

for num in $nums;do
echo $num;
done;

```

bash注释

- 单行注释
- 多行注释

:表示空命令

:<<-'EOF
注释内容
EOF'


数组的遍历

for num in `${nums[@]}`;do
	echo $num;
done;



关于数组的操作

获取数组的长度

遍历数组

数组切片





if语句


高级特性




(())


总结:shell中的操作符


- ()
在shell中表示
在正则表达式中表示分组


- (())
c语言风格的测试--仅针对数字测试



- []



- [[]]



> 双方括号在bash中工作良好，但是并不是所有shell都支持此语法




case语句



# for语句
for row in  list;do

done;

list是什么

> 在list列表中要特别注意单引号,防止其成对出现,造成解析异常


更改字段分隔符

ifs,内部字段分隔符

