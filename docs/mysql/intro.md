---
title : MySQL简介
sidebar_position : 0
---


# mysql简介
mysql是开源免费的关系型数据库

何为关系型数据库?
关系型数据库，是指采用`关系模型`来组织数据的数据库，其以行和列的形式存储数据，

# 关于mysql数据库的安装

在mysql安装之前需要对mysql分型和版本进行选择
1. mysql的分支
由于mysql官方版不一定能适合
percona
mariadb
drizzle


2. mysql的版本



由于mysql是开源数据库,因此有众多的分支,其中主要分支有:

mysql的发行版有



源码安装
二进制包安装,绿色安装,
yum安装,





对mysql数据库的认知


mysql是流行的开源免费的关系型数据库,



关于mysql的架构,




选择官方版的mysql5.7




mysql5.7的新特性
从mysql5.7.8版本开始,提供了json的支持



关于mysql的json的两点疑惑:
1. mysql5.7提供的json支持与存储引擎没有关系
2. mysql的json与mongodb的比较
mysql支持

MGR,
GTID,



mysql是开源免费的高性能的c/s架构的关系型数据库


mysql数据库自带那些工具:
mysql:mysql客户端
mysqld:mysql服务端
mysqld_safe:

mysql_install_db:



mysqldump:用于备份数据库的字典
mysqldumpslow

mysqladmin:
mysqlshow:

mysqlbinlog:


innochecksum
lz4_decompress

my_print_defaults

mysqlcheck
mysql_client_test_embedded
mysql_config
mysql_config_editor



mysqld-debug
mysqld_multi


mysql_embedded
mysqlimport

mysql_plugin
mysqlpump
mysql_secure_installation

mysqlslap
mysql_ssl_rsa_setup
mysqltest_embedded
mysql_tzinfo_to_sql
mysql_upgrade
mysqlxtest
perror
replace
resolveip
resolve_stack_dump
zlib_decompress

myisam_ftdump
myisamlog
myisampack
myisamchk


mysql之root账户忘记密码怎么办?
1. 关闭mysqld服务,
2. 以跳过授权表,禁止远程登录的方式登录
```mysql
mysqld_safe --skip-grant-tables --skip-networking
```


3. 执行flush privileges;
4. 执行set password=password('new_password');


set命令
set password [for user_name@host]=password('new_password');
> 注意'user_name@host'是错误的,无需加引号,因为这个原因,好多次没有





# mysql的安装

安装方式
1. 源码编译安装
2. 二进制包装
3. rpm安装

更加推荐二进制安装,可以定制,


安装规范
1. 到mysql官网,下载符合主机平台的二进制包
2. 创建mysql用户
3. 为了数据安全,应尽可能应用与数据分离,数据单独存在在一块磁盘上,


关于mysql的配置
应用目录
数据目录
日志目录








# 关于mysql的安装

初始化

mysql5.6

mysql5.7
mysqld --initialzie --user=mysql





# 关于mysql的配置





字符集


字符集
服务端字符集
- 数据库
- 表字符集
- 字段字符集
客户端字符集



关于字符集的选择，一般选择utf8是，对于需要支持表情包的可使用utf8mb4,



遇到乱码，就是字符
set names utf8;




关于mysql的难点
1. 事务安全
2. mvcc
3. 索引
4. 锁机制

5. mysql的复制
6. mysql的备份与恢复


7. mysql的




mysql的安装
初始化

mysql5.7版本
mysqld --initizlize



mysql自带工具






mysql架构


mysql物理




mysql的数据库字典
所谓数据字典，也就是mysql的元数据，是mysql





mysql数据的存储
数据库由一系列的表组成，表是

表逻辑上，页是组成表的基本单位，
1页=16k，
64页=1区
64区=1段，一张表就是由n个数据段组成的


类似的，就一个数据库就是一个小区，一张表就是一栋楼，一个区，就是





# 日志文件

错误日志
慢查询日志
二进制日志
中继日志





数据字典






mysql是否可以像bash一样自动补全？

# 使用第三方软件mycli
yum install -y epel-release

yum install -y python-pip python-devel
yum remove -y python-pip python-devel

pip install mycli


python3 pip install --upgrade pip
python3 -m pip install pip==版本号


Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-bICix_/pip/
You are using pip version 8.1.2, however version 22.1.2 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.



python -m pip install --upgrade --force pip


1. 如何判断是否安装了epel-release源码
yum list

2. centos7如何安全升级python3，主要担心不兼容





数据字典，元数据，都是关于数据的数据
mysql,
information_schema,
performance_schema,
sys
> 其中sys在mysql5.7版本开始出现

show命令，其实就是对元数据的封装；
show databases;//查看数据库列表
show database();//查看当所在数据库
show tables;//查看当前数据库的数据表列表



show命令


show databases/tables;
select database();

show create database/table/user ;
show drop database/table/user ;


show tables from databases;


权限管理

用户，角色


```sql
# 创建用户
create user liwuming@'%' identified by 'admin123';

# 查看用户信息
show create user liwuming@'%';

# 用户授权
grant 

select,insert,update,



# 回收权限

# 删除用户

```



# 创建数据库
```sql

# 创建数据库--accp
create database accp [default charset set utf8];

# 查看建表语句
show create database db_name;


use accp;
create table user(
id int auto_increment,
sname varchar(30) not null default '' comment '名字',
age tinyint unsigned not null default 0 comment '年龄',
primary key(id)
)engine=innodb;


table重命名
rename table user to student;

show master status;
```



select database();


查看变量
show variables like '';






在mysql8之后增加了用户组的概念




对于innodb架构

内存和磁盘




