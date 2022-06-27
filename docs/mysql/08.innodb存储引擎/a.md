
# mysql安装

准备工作
卸载mariadb
rpm qa|grep mysql
rpm qa|grep mariadb

创建mysql账户
useradd -M -s /sbin/nologin -r mysql




https://work.ibiancheng.net/?s=Forum.Thread.support

初始化数据字典
mysqld --initizlize --user=mysql 




a.user_name,a.avatar,a.create_time,b.title,b.images