

在mysql安装之后，会发现有一下几个数据库
mysql
sys
information_schema
performance_schema



# mysql数据库


# sys数据库

sys数据库是在mysql5.7之后新增的，对于该数据需要关注三个部分--innodb,schema,statement

## innodb部分
innodb部分包含三张表，innodb_lock_waits,innodb_buffer_stats_by_schema,innodb_buffer_stats_by_table 

```sql
innodb_table_waits,

select * from sys.innodb_lock_waits\G;
wait_started                 | 2022-06-10 04:09:43
wait_age                     | 0:00:36
wait_age_secs                | 36
locked_table                 | `accp`.`student`
locked_index                 | PRIMARY
locked_type                  | RECORD
waiting_trx_id               | 8459
waiting_trx_started          | 2022-06-09 23:47:25
waiting_trx_age              | 4:22:54
waiting_trx_rows_locked      | 3
waiting_trx_rows_modified    | 0
waiting_pid                  | 8
waiting_query                | update student set age=12 where id=1
waiting_lock_id              | 8459:33:3:2
waiting_lock_mode            | X
blocking_trx_id              | 8458
blocking_pid                 | 7
blocking_query               | <null>
blocking_lock_id             | 8458:33:3:2
blocking_lock_mode           | X
blocking_trx_started         | 2022-06-09 23:46:17
blocking_trx_age             | 4:24:02
blocking_trx_rows_locked     | 1
blocking_trx_rows_modified   | 2
sql_kill_blocking_query      | KILL QUERY 7
sql_kill_blocking_connection | KILL 7
```



在结果格式显示错乱时，可以使用\G选项，将查询到的横向表格纵向输出，方便阅读
> 在使用了\G选项之后，就不需要使用;,加上有些画蛇添足，虽然不会有致命错误，但是会有ERROR: No query specified
因为;是mysql的默认命令分隔符，mysql会将\G和;当成两条命令，因此会报错




insert into student (sname,age) values ('张三',10),('李四',11),('王五',12),('赵六',13);



sys数据库的备份
mysqlpump sys>sys_dump.sql

mysqldump与mysqlpump



mysqlpump工具
缺点
官方表示在mysql5.7.11之前版本，无法保障数据的一致性，




# information_schema数据库

# performance_schema数据库



在information_schema库下，无法使用show tabels;



如何使用mysql的帮助文档
? show
show engiens;









mysql dba工作笔记--杨建荣
# innodb体系结构

