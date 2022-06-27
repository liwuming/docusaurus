
mysql的日志文件
- 错误日志--error log
- 查询日志--query log
- 二进制日志--binlog
- 慢查询日志--slow log
- 中继日志--
- 重做日志--redo log
- 撤销日志--undo log






随机IO
顺序IO



事务：
第一步：
在开始事务时，会先记录该事务的LSN

第二步：
在执行事务时，会将事务插入到log buffer中

第三步：
在事务提交时，会先将log buffer中的事务刷新到磁盘，然后提交

如果步骤2结束，在做步骤三时挂掉了，若此时redo中是prepare状态，binlog中有该事务的event，则需要提交。



记录的形式
redo log记录的是数据页的变更，而这种变更记录是没有必要全部保存，因此redo log是实现上采用了大小固定的，循环写入的方式，当写到结尾时，会回到开头循环写入日志；





在计算操作系统中，用户空间下的缓冲区数据一般情况下无法直接下无法直接写入磁盘的，

innodb_flush_log_at_trx_commit:
0:延迟写
1:实时写，实时刷
2:实时写，延迟刷



三者的区别是什么呢？
innodb buffer pool属于用户空间的mysql应用的内存领地，当mysql服务挂掉的情况下，buffer pool中的数据将丢失，无法恢复，os buffer属于操作系统的缓冲区，相对buffer pool来说更加安全些，当mysql应用挂掉，但是操作系统不宕机的情况下，数据还是存在的，当

双一设置
sync_binlog=1;
innodb_flush_log_at_trx_commit=1;

> sync_binlog用于控制mysql的binlog同步到磁盘的频率，可选值0,n，默认值为0
0：当事务提交时，mysql不会将binlog_cache中的数据刷新到磁盘，而是由文件系统绝顶什么时候来同步，性能最好，但不安全
n：每当有n个事务提交时，mysql将进行一次fsync之类的磁盘同步指令，将binlog_cache中的数据强制写入磁盘


check pos
write pos
lsn：




关于事务的配置

要更改redo log文件的数量或者大小，
innodb_log_file_size
innodb_log_files_in_group,默认值和推荐值为2



innodb默认在数据目录中创建了两个5M的重做日志文件，名为ib_logfile0和ib_logfile1



redo log的优化
- 
- 增加redo log缓冲区的大小
innodb_log_buffer_size





# 关于事务的控制语句
- 显示的开启事务: start transaction|begin；
- 提交事务: commit
- 回滚事务: rollback

> 在存储过程中，由于mysql分析会自动将begin识别为begin...end，因此在存储过程中，只能使用start transction语句来开启一个事务

在mysql命令行的默认设置下，事务都是自动提交的；









