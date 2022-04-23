

安装linux最重要的是磁盘分区
boisboot 2m
/swap	2g
/home	1g
/boot   1g
/		16g



安装完linux之后，第一件事便是配置网络，可以有远程操作linux


```bash
vi /etc/sysconfig/network-script/ifcfg-ens33

# 改
BOOTPROTO=static
ONBOOT=yes
# 增
IPADDR=192.168.1.100
NETWORK=255.255.255.0
GATEWAY=192.168.1.2

IPADDR=192.168.1.110
NETWORK=255.255.255.0
GATEWAY=192.168.1.2
DNS1=114.114.114.114
```




安装wget
cp /etc/yum.

cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak


wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo


yum clean all
yum makecache

yum list
修改yum源

安装vim
安装lrzsz


配置vim
```bash
vim /etc/vimrc

set nu "显示行号"
set tabstop=4
set nobackup 
set autoindent "自动对齐"

syntax on "语法高亮"
```

设置vi=vim别名
```bash
vi /etc/profile

alias vi=vim;
```
source /etc/profile
source的简写.,所以也可以执行. /etc/profile,效果是一样的





安装redis
cd /usr/local/src/
wget https://download.redis.io/releases/redis-6.2.6.tar.gz

准备工作
tar -zxvf redis-6.2.6.tar.gz
cd redis-6.2.6
yum install -y gcc

make && make install

安装完成之后,在/usr/local/bin/目录下就多了几个以redis开头的命令
redis-benchmark:redis的压力测试工具
redis-check-aof
redis-check-rdb
redis-cli:redis的客户端
redis-sentinel
redis-server:redis的服务端




添加redis用户
useradd -rM -s /sbin/nologin redis

cat > /etc/systemd/system/redis.service <<-EOF
[Unit]
Description=redis
After=network.target

[Service]
User=redis
Group=redis
Type=forking
PIDFile=/liwuming/redis/redis.pid
ExecStart=/usr/local/bin/redis-server /etc/redis.conf
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s QUIT $MAINPID
PrivateTmp=true

[Install]
WantedBy=multi-user.target
EOF



磁盘管理
lsblk



