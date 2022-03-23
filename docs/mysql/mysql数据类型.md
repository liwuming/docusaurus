# mysql架构






# mysql的文件

## mysql binlog

> mysql binlog是一个二进制日志，包含了数据库的所有数据变更信息

二进制的作用
- 数据恢复
- 搭建主从复制数据库



虽然mysql binlog很有用，也很重要，但由于要记录数据，就不可避免的增加了数据库服务器的IO压力，或许mysql官方出于极致性能的考虑吧，所以在默认情况下并未开启binlog功能，可通过`show variables like '%log_bin%'`命令来查看

```mysql
mysql> show variables like '%log_bin%';
+---------------------------------+------------------------------------------------------+
| Variable_name                   | Value                                                |
+---------------------------------+------------------------------------------------------+
| log_bin                         | ON                                                   |
| log_bin_basename                | d:\wamp64\bin\mysql\mysql5.7.31\data\mysql-bin       |
| log_bin_index                   | d:\wamp64\bin\mysql\mysql5.7.31\data\mysql-bin.index |
| log_bin_trust_function_creators | OFF                                                  |
| log_bin_use_v1_row_events       | OFF                                                  |
| sql_log_bin                     | ON                                                   |
+---------------------------------+------------------------------------------------------+
6 rows in set, 1 warning (0.00 sec)
```



如何开启binlog
window环境


linux环境
```ini
log-bin=mysql-bin
expire_logs_days = 2


log-bin = /var/lib/mysql/<application-name>-mysql-bin.log
```

修改完毕，重启mysql服务
```bash
systemctl restart mysqld
```



如果`log_bin`的值为`ON`，则表明开启binlog功能设置成功




关于binlog的常用操作

```mysql
# 查看当前服务器上有哪些binlog
show binary logs;
show master logs;

# 重置binlog日志信息
reset master;

# 刷新binlog日志信息
flush master;


# 查看当前使用的binlog日志信息
mysql> show master status;
+------------------+----------+--------------+------------------+-------------------------------------------+
| File             | Position | Binlog_Do_DB | Binlog_Ignore_DB | Executed_Gtid_Set                         |
+------------------+----------+--------------+------------------+-------------------------------------------+
| mysql-bin.000059 |      194 |              |                  | e6e64ee6-48e0-11ec-ae4e-7c10c99f0888:1-34 |
+------------------+----------+--------------+------------------+-------------------------------------------+
1 row in set (0.00 sec)
```


## 关于binlog细节

如何记录的--以事件为记录单元
show binlog events in 'mysql-bin.000027'


每个binlog文件总是以formate descption event作为开始，以



记录格式
行模式的事件类型
语句模式的事件类型

行模式--RBR
语句模式--SBR
混合模式--MIX



https://blog.csdn.net/weixin_44377973/article/details/107122020
https://dev.mysql.com/doc/internals/en/binlog-event.html




关于binlog的优化
binlog_row_image参数

在row模式下也可以记录SQL
binlog-rows-query-log_events=1




关于binlog的截取

关于GTID
幂等性






## 慢查询日志

## redo log

## undo log



# mysql支持的数据类型

