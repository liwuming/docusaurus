
今天突然mysql无法启动了，通过提示
```mysql
[root@localhost /]# systemctl start mysqld
Job for mysqld.service failed because the control process exited with error code. See "systemctl status mysqld.service" and "journalctl -xe" for details.
```

然后通过提示信息执行`journalctl -xe`命令，得知因为error.log没有写权限而导致的启动失败

Apr 20 04:20:34 localhost.localdomain mysqld[1345]: 2022-04-20T08:20:34.047397Z 0 [ERROR] Could not open file '/liwu
Apr 20 04:20:34 localhost.localdomain mysqld[1345]: 2022-04-20T08:20:34.047411Z 0 [ERROR] Aborting




linux的目录层级结构




日志放在那个目录下



mysql的安装
# mysql5.7版本中
mysqld --initialize --user=mysql --basedir=/user/local/mysql/ --datadir=/liwuming/mysql/data/

默认在初始化时会生成一个临时密码，如果不需要临时密码可以通过参数将其关闭


mysqld --initialzie-insecure --user=mysql --basedir=/user/local/mysql/ --datadir=/liwuming/mysql/data/

# mysql的查询的执行流程





# mysql事务




# mysql索引


 

# mongodb与redis









