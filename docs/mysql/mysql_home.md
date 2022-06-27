---
id: mysql_home
sidebar_position: 0
---


# 我是mysql首页



# 关于mysql知多少?



# mysql的架构





# mysql的权限管理


:::info
1121
::::

在mysql8之前版本中，可以

在mysql8中，授权时用户必须存在
```mysql

```


# mysql的生命周期



如何安装

如何启动


mysql的启动流程



账户登录时的权限验证




# mysql的数据类型

数据类型
tinyint
smllint 
mediumint
int
bigint



字符类型
char
varchar
text


时间类型
date

json类型

> 


关于类型如何选择
- 越简单越好，
- 在满足业务需求的情况下，越小越好






# mysql的优化



减少io操作
减少io操作





之前--设计好mysql的结构
使用合适的数据类型
适当的冗余，减少join操作
增加索引


开发

上线之后

开启慢查询日志，
分析系统负载，成持续性高负载，还是周期性高负载

热数据，放在内存数据库中，如redis，mongodb中


找到性能瓶颈，







# 数据库的备份与恢复


# 性能调优

- 选择合适的CPU

innodb存储引擎的优化



独立数据库，还是

innodb plugin


```mysql
mysql> show variables like '%threads%';
+----------------------------+-------+
| Variable_name              | Value |
+----------------------------+-------+
| innodb_purge_threads       | 4     |
| innodb_read_io_threads     | 4     |
| innodb_write_io_threads    | 4     |
``` 


新的术语

缓冲池--innodb buffer pool

raid和lvm





# mysql服务管理

```bash
# 启动mysql服务
systemctl start mysqld

# 停止mysql服务
systemctl stop mysqld
```


# 停止mysql服务





# 停止mysql服务






