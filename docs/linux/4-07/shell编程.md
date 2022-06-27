
条件判断

if[];then;

fi

if[];then

elif

fi


防止空参数
== 'x'


1.形式
2.判断

文件测试
- -f：普通文件



- -e：是否存在
- -s：是否非空




字符测试
- -z：空时返回true
- -n：非空时返回true

数字


case $ in 
	a)
	
	;;
	
	b)
	
	;;
	*)
	
	;;
esac




for循环
for in ;do
	//循环体
done



3.逻辑结构


命令替换
命令替换的传统做法是使用反引号包围命令

>$()是``的较新语法



here文档
cat <<-EOF

EOF
-的含义是什么




临时文件
有时需要用临时文件把输出暂存起来，



mktemp


read



while condition;do
	//循环体
done


until condition;do
	//循环体
done

求1-100之和
```bash
#!/bin/bash
sum=0
num=0
while [num lt 100];do
	sum += num;
	num++;
done

echo $sum;
```








login shell和nologin shell
login shell
/etc/profile
在profile文件中，会读取/etc/profile.d/目录中的.sh文件
/etc/profile.d/




nologin shell


/etc/profile
/etc/bashrc

~/.bashrc
~/.bash_profile




登录
.bash_profile
.bashrc
/etc/bashrc

检测 echo $0




]# rpm -qc bash
/etc/skel/.bash_logout
/etc/skel/.bash_profile
/etc/skel/.bashrc




bash数组

函数





命令历史
!执行历史
!!：上一个命令
!$：上一个命令的最后一个参数
!#：上#个参数


tee命令



别名：
取消别名
unalias
\：跳过别名



jobs

kill %3 vs kill 3


管道


# 命令排序
;不具备逻辑判断
&&
||




1、cat命令
打印文件内容


|cat - file




options
- -n:显示行号
- -s:删除多余的空白行
- -T:将制表符显示为^i







查找
find命令


find 路径 
> find - search for files in a directory hierarchy



根据文件命查找

-l:
- -name

正则匹配




action:



locate命令





chap08 网络设置


对网络认知有多少



ping命令





各种网络协议
TCP/IP
HTTP
Socket





ifconfig
route
host







