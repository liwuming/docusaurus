VMware Workstation 与 Device/Credential Guard 不兼容。在禁用 Device/Credential Guard 后，可以运行 VMware Workstation

win+r，services.msc

win+x,bcdedit /set hypervisorlaunchtype off

linux 自定义分区

boot 300Mb
home 1024Mb
swap 分区 2024Mb
/

ip 命令

IPADDR=192.168.31.111
NETMARK=255.255.255.0
GATEWAY=192.168.31.1
DNS1=119.29.29.29

# mysql 安装

## 关于 mysql 版本的选择

## mysql 的安装

创建用户

useradd -s -r

> 系统用户与普通用户的区别

mysql 程序目录应该与数据目录分开，甚至说，数据应独立磁盘，因为数据是无价的

关于 mysql 的运维工具

- percona-toolkit

mysql 备份工具

mysqldump

mydumper

xbk

关于 mysql 的安装规划

mysql 中重要的数据，和日志文件，表空间，等信息等放在 liwuming 目录下，规划如下

/mysql

​ |--data：数据目录

​ |--logs：日志目录

​ |--binlog：二进制日志目录

​ |--idb：表空间

关于 mysql 版本的选择

安装 lrzsz

> lrzsz 是一个 ftp 的软件

将 mysql 包拖进/usr/local/src 目录下

解压 mysql 二进制包

```bash
tag -zxvf mysql-5.7.37-linux-glibc2.12-x86_64.tar.gz




```

mysql 程序目录下的 bin 目录是所有 mysql 的可执行程序
如何将所有程序创建软连接
ln -s /usr/local/mysql/\* \*

二进制版是一个免安装版，


关于mysql的版本选择
5.7.26



准备工作
1.下载mysql二进制包
https://cdn.mysql.com/Downloads/MySQL-5.7/mysql-5.7.26-linux-glibc2.12-x86_64.tar.gz

2.将mysql的软件安装在/usr/local/mysql/目录下，将mysql的数据放在/liwuming/mysql/data,将日志数据放在/liwuming/logs/目录下

3.新建系统用户mysql
useradd -r -M -s /sbin/nologin mysql

-r:系统用户
-M：不需要家目录
-s：shell脚本



# 初始化


mysql5.6
mysql_install_db --

mysql5.7
mysqld --initalize --user


pid-file = /liwuming/mysql/mysqld.pid



# 二进制安装
初始化mysql

systemctl daemon-reload


./mysqld --initialize --user=mysql --basedir=/url/local/mysql --datadir=/liwuming/mysql/data
./mysqld --initialize-insecure --user=mysql --basedir=/url/local/mysql --datadir=/liwuming/mysql/data


systemctl daemon-reload
systemctl start mysqld 
mysql启动失败

journalctl -xe

 ExecStart=/usr/local/mysql/bin/mysqld --defaults-file=/etc/my.cnf --daemonize

mysqld --datadir=/liwuming/mysql/data/ --daemonize



在删除目录软连接时，需要注意：如果仅仅是想删除软连接不需要删除原目录下的数据时，不能加/，否则会将原目录下的数据删除





#会生成临时密码
mysqld --initialzie
#无限制，无临时密码
mysqld --initialzie-insecure 

yum install -y libaio-devel








# yum安装



mkdir /liwuming/mysql/{data,logs}

touch /liwuming/mysql/logs/error.log



mysql配置文件
cat>/etc/my.cnf <<-EOF
[mysql]
port=3306
socket=/tmp/mysql.sock

[mysqld]
user=mysql
port=3306
socket=/liwuming/mysql/mysql.sock
basedir=/usr/local/mysql/
datadir=/liwuming/mysql/data/


[mysqld_safe]
pid-file = /liwuming/mysql/mysqld.pid
log-error=/liwuming/mysql/logs/error.log
EOF


编写mysqld.service
vi /etc/systemd/system/mysqld.service
```initalize
cat > /etc/systemd/system/mysqld.service <<-EOF
[Unit]
Description=MySQL Server
Documentation=man:mysqld(8)
Documentation=http://dev.mysql.com/doc/refman/en/using-systemd.html
After=network.target
After=rsyslog.target


[Service]
User=mysql
Group=mysql
# Have mysqld write its state to the systemd notify socket
Type=forking

# Start main service
ExecStart=/usr/local/mysql/bin/mysqld --defaults-file=/etc/my.cnf --daemonize

# Sets open_files_limit
LimitNOFILE = 10000

[Install]
WantedBy=multi-user.target
EOF
```
systemctl daemon-reload


vi /etc/profile

将mysql的bin目录加入PATH环境变量




mysql安装完毕之后，第一件事就是连接到mysql，修改root账户的密码

set password=password('admin123');



# mysql修改密码的方式

方法一：
set password=password('xx') [ for user@host];
for可以省略，默认是给自己设置密码


