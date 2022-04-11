# shell的编写
首行注明执行脚本的shell解释器类型
其次注明脚本的作用，作者及其邮箱信息等



变量
自定义变量
key=value
>等号两侧不应该有空格

特殊变量
$0:脚本名称
$$:进程号
$?:退出码

> 每个命令在执行完毕之后--无论成功或失败，都会有一个
> diff和grep，正常退出时，使用非0的退出码，


$1:获取第一个变量
$2:获取第二个变量
...
$#:变量的总数
$@:变量列表




## 判断条件
且 &&
或 ||
非 !

测试
[ ]

测试--test，[]



测试命令
文件命令
-f，是否是普通文件
-e，文件是否存在，
-s，文件是否非空，

-d,


字符串命令
- -z，参数为空时返回true
- -n，参数为非空时返回true


算术测试
- -eq
- -ne
- -lt
- -gt
- -le
- -ge





由于shell的非幂等性，因此在编写shell时，重要的是判断
# 如何防止空参数?
""







不要给被人添麻烦
# shell的执行




# here文档



cat <<EOF与cat <<-EOF的区别?
> If the redirection operator is <<-, then all leading tab characters are stripped from input lines and  the  line  containing  delimiter.   
如果重定向的操作符是<<-，那么分界符（EOF）所在行的开头部分的制表符（Tab）都将被去除。
这可以解决由于脚本中的自然缩进产生的制表符。

cat > 1.txt <<-EOF
hello world
hello world
EOF




# 重要的shell脚本工具

1. basename
> strip directory and suffix from filenames


- a
- s，指定后缀名

2. awk


3. xargs


shell脚本的劣势

虽然expr可以进行算术运算，但是操作效率很低，如果需要经常做算术操作，可以改用python

对于算术操作支持不好，




## 子shell

将命令置于括号中，即可运行子shell


读取用户输入





shell脚本练习
计算/etc/passwd文件中第10个用户和第20个用户的id之和

如何获取文件中的某一行
获取行之后，如何获取id字段

```bash
# 方法一
user_id1=$(head -10 /etc/passwd|tail -1| cut -d: -f3)
user_id2=$(head -20 /etc/passwd|tail -1| cut -d: -f3)

sum=$[user_id1+user_id2]
echo "user1 ${user_id1}"
echo "user2 ${user_id2}"
echo $sum;

# 方法二


```



在linux中常常使用cut命令来切割字符串
- -d，指定分隔符，
- -c，提取第n个字符
- -f，指定输出的域


linux高频命令
ls
pwd
mount
cut





# 删除左边字符，保留右边字符
## 删除右边字符，保留左边字符

```bash
url=https://www.baidu.com

echo ${url#*//}
url=h//ttps://www.//baidu//.com
echo ${url#-1//}
```


https://www.cnblogs.com/shizhijie/p/8297840.html



wc -l


空白行之和


linux



字符串的比较
== ：
!=：
>：
<：
=~:左侧字符串是否能够被右侧的pattern所匹配

- -z：是否为空，空时为true，不空时为false
- -n：是否不空，不空时为true，空时为false


- [[]]
- 字符串需要加双引号










文件测试
- -a/-e FILE_PATH,文件存在性测试，存在则为true，否则false

- -f，是否是普通文件
- -d，目录测试
- -b，块设备
- -c，字符设备
- -p，命名管道设备
- -S，套接字文件
- -h/-L,符号链接文件




从属关系测试
- -O，属主
- -G，属组


权限测试
- -r，当前用户对文件否有可读权限
- -w，当前用户对文件否有可写权限
- -x，当前用户对文件否有可执行权限

特殊权限测试
- -u，suid
- -g，sgid
- -k，sticky

内容测试
- -s，是否非空，
```bash


```




时间戳
- -N，是否自从上次读操作后，是否被修改过


双目测试
FILE1 -ef FILE2,file1与file2是否指向同一inode
FILE1 -nt FILE2,file1是否新与file2
FILE1 -ot FILE2,file1是否旧与file2




获取history中最后一个命令


重复上一次的执行
```bash

# 方法一：通过上下键滚动，查找命令
# 方法二：通过上下键滚动，查找命令
!!

# 方法三
! -1

# 方法四：
【ctrl】+【p】+【enter】
```


组合条件测试



参数变量
引用方式
$1,$2,...,${10},${11}
轮替~shift [n]

```bash

grep -e "" $1|wc -l

```








