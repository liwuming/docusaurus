


若是通过yum安装的nginx，可通过`rpm -qc`命令来查看nginx的配置文件
]# rpm -qc nginx
/etc/logrotate.d/nginx
/etc/nginx/conf.d/default.conf
/etc/nginx/fastcgi_params
/etc/nginx/mime.types
/etc/nginx/nginx.conf
/etc/nginx/scgi_params
/etc/nginx/uwsgi_params



/etc/nginx/nginx.conf是nginx的主配置文件

全局块
- user/group指令
用于配置运行nginx服务的worker进程的用户和用户组


在用yum安装nginx时，系统自动新建了nginx用户，作为学习，新建一个www的web系统用户，复习一下前面的用户管理


useradd -rs /sbin/nobody www


-m,--create-home
-M,--no-create-home



user nginx





- work process

master_process
worker_process


- daemon:设定nginx是否以守护进程启动
语法：daemon on|off;
默认值：on

- pid：master进程pid文件存放位置
- error_log:

> error_log可以在全局块，http，server，location均可以设置error_log
> 日志级别


- include





events块:
涉及的指令主要影响nginx服务器与用户的网络连接









http块:






虚拟主机：



http块


每个http都可以包含多个server块，每一个server块就相当于一台虚拟主机


server块


最常见的两个配置项：

ip地址

location块



http事务


> 在修改完nginx配置文件之后需要养成用-t选项测试是否存在语法错误，在没有语法错误的情况下执行-reload命令






反向代理服务器

代理服务器的作用
缓存










## events

- worker_connections:

- multi_accept:设置是否允许同时接收多个网络连接
语法：multi_accept on|off;
默认值：off，即每个work process一次只能接收一个网络连接

- use:选择事件驱动模型
- accept_mutex:设置网络连接的序列化
语法：accept_mutex on|off;
默认值：on

在unix网络编程有一个惊群的问题--


事件驱动模型的选择


http块
mime：





















https://cloud.tencent.com/developer/article/1793766



lvs
lvm--逻辑卷

docker&&k8s

mysql

redis


python



search




nginx
tomcat
hadoop
openstack
linux系统优化

网络安全管理

