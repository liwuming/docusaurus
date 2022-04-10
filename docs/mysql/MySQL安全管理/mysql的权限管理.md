

MySQL的安装



MySQL的架构





SQL的开发规范和基础
- 数据库默认使用innodb存储引擎
- 字符集设置统一--utf8
> utf8编码不支持表情包，对于特殊的场景，需要支持表情包的可以将字符集设为utf8mb4
- 事务的隔离级别--RR
- 一个数据库实例，最多50个库，一个库下至多500个表，一个表的记录数控制在2000w以内








MySQL查询优化





















mysql的权限机制



mysql的权限级别

global level
database level
table level
column level


mysql.user
mysql.db



user_name@host









# mysql之索引
B+tree

三级




索引的分类
复合索引




使用索引是有代价的，索引会增加磁盘的开销，使用索引，加速了读的性能，但是对插入和更新是有拖后腿的





