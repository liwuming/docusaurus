# 消息队列

特点：先进先出


RabbitMQ
Kafka


MQ的选择

数据量不大，中小型公司优先学习RabbitMQ



# RabbitMQ是什么

作用
- 流量削峰
- 应用解藕
- 异步处理



安装RabbitMQ

1、由于RabbitMQ是由erlang语言开发，因此需要安装erlang的语言环境
https://packagecloud.io/rabbitmq/erlang/packages/el/7/erlang-23.2.7-2.el7.x86_64.rpm
# 解压

rpm -Uvh erlang-23.2.7-2.el7.x86_64.rpm
# 安装
yum install -y erlang

通过`erl -v`命令来检测是否安装成功

2、
yum install -y socat

https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.9.15/rabbitmq-server-generic-unix-3.9.15.tar.xz



3、
rpm -ivh 

解压
yum install -y rabbitmq-server
启动服务
systemctl start rabbitmq-server




rabbitmqWeb管理界面
默认情况下，rabbitmq没有安装web端的客户端软件，需要按炸U那个才可以生效
# 打开RabbitMQWeb管理界面插件
rabbitmq-plugins enable rabbitmq_management

192.168.31.110:15672


fireewall-cmd --add-port=15672/tcp --zone=public --permanent 

guest





RabbitMQ的核心概念
生产者
交换机
队列
消费者

交换机对队列之间的关系是绑定



核心部分

发布订阅
路由模式



channel：极大的降低了ctp connection的开销









# 用户管理


## 创建用户
rabbitmqctl add_user user_name password

## 设置用户角色
rabbitmqctl set_user_tag user_name role


## 设置用户权限
rabbitmqctl set_permissions -p '' '' '.*' '.*' '.*'


## 清除权限--clear-permissions


## 用户列表
rabbitmqctl list_users


## 删除用户--delete_user


