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
=======



# 初始化

mysql5.6
mysql_install_db --

mysql5.7
mysqld --initalize --user



