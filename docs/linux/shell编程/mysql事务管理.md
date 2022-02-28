

事务的实现



事务日志

redo


关于redo设置

所以innodb_flush_log_at_trx_commit
0:
1:默认值，在提交事务时，先将日志缓冲写入磁盘，预写日志--WAL
2:

在开启事务时，会记录一个LSN号，

log sequence number表示
log flushed up to
lash checkpoint at

以内存缓冲区作为媒介，

undo

redo放在redo log文件中，
undo存放在数据库内部的一个特殊段中，这称之为undo段，undo段位于共享表空间内


show 






# 关于mysql进程

