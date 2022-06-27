
VMware Workstation 与 Device/Credential Guard 不兼容。在禁用 Device/Credential Guard 后，可以运行 VMware Workstation



win+r，services.msc

win+x,bcdedit /set hypervisorlaunchtype off


linux自定义分区



boot 300Mb
home 1024Mb
swap分区 2024Mb
/



ip命令


IPADDR=192.168.31.111
NETMARK=255.255.255.0
GATEWAY=192.168.31.1
DNS1=119.29.29.29





在web应用方面，mysql是最好的RDBMSrelational database manager system之一




mysql是c/s架构的软件，并且自带了很多有用的工具，因此配置文件使用块配置

[mysql]


[client]


[mysqld]





# mysql的安装




安装规范




## 初始化

mysql5.6

mysql5.7版本的初始化
mysqld --initialize --user=mysql --basedir= --datadir=

留意初始化信息的话，会看到一串随机码，这个是mysql初始化生成的随机密码，在mysql服务启动后，第一件时就是修改密码，要不什么命令都运行不了；




在mysql5.7版本中，初始化时处于安全考虑，会生成一个临时的密码，但是这并不方便，通常使用--initialzie-insecure选项来进行初始化


在mysql5.7新版本中主库已经启用了GTID，--









# mysql日志


二进制日志
查看是否开启了mysql二进制日志
show variables like 'binlog%';










# 6月7日
1. mysql的架构
2. SQL入门到精通
3. mysql事务安全
4. 



# mysql架构


mysql的权限校验


mysql的执行流程
1. 解析SQL
2. 





├── data
│   ├── auto.cnf，mysql启动时如果没有uuid，就会生成这个文件
│   ├── ca-key.pem
│   ├── ca.pem
│   ├── client-cert.pem
│   ├── client-key.pem
│   ├── ib_buffer_pool，mysql5.7版本新特性--在关闭mysql时，会把内存中的特殊局保存在这个文件中，提高使用率和性能
│   ├── ibdata1，系统表空间
│   ├── ibtmp1，innodb临时表的独立表空间
│   ├── ib_logfile0，innodb存储引擎特有的日志文件，redo文件
│   ├── ib_logfile1
│   ├── localhost.localdomain.err
│   ├── mysql，mysql的数据字典
│   ├── performance_schema，mysql的数据字典
│   ├── private_key.pem
│   ├── public_key.pem
│   ├── server-cert.pem
│   ├── server-key.pem
│   └── sys，mysql的数据字典
├── logs
├── mysql.pid，mysql服务的进程号
├── mysql.sock
└── mysql.sock.lock





对于innodb存储引擎，每个表都有两个文件中--frm和idb，frm文件用于存储表结构信息，idb文件用于存放数据和索引信息




系统文件，
auto.conf,
pid,进程文件

idbdata


数据库信息




元数据信息




日志文件




