

mysql的安装流程

如何获取mysql安装包


关于GA，是指稳定版，已经成功通过了早期的发布阶段，并且被认为是可靠的，没有严重的错误，并且适合在生产系统中使用。




如何获取mysql安装包
当然是上官网站https://dev.mysql.com/downloads/



1. mysql的分支及版本选择
2. mysql安装包的获取

在获取mysql安装包之后，应确保其md5校验和mysql下载页面所提供的校验和匹配

https://downloads.mysql.com/archives/community/

对于源码包可使用md5sum
[root@localhost src]# md5sum mysql-5.7.37-linux-glibc2.12-x86_64.tar.gz 
423915249cc67bbfa75223d9753cde77  mysql-5.7.37-linux-glibc2.12-x86_64.tar.gz

MD5：423915249cc67bbfa75223d9753cde77


3. 
# 新建mysql用户
useradd -r -M -s /sbin/nologin mysql

# 将mysql应用目录下的所有文件的属主改为mysql
chown -R mysql:mysql msyql.xx



分配一块新磁盘作为mysql的数据存储目录，为了数据更加安全，将mysql数据与系统分离
初始化mysql


mysql5.6版本的初始化


mysql5.7版本的初始化
mysqld --initialize-insecure --user=root --basedir= --datadir=

> mysql5.7版本中使用mysqld命令的--initialzie选项也可以进行初始化，但是该选项会生成一个临时密码，在登录之后第一件事就是修改密码，否则就不能进行更新操作，不如--initialize-insecure选项方便；



关于权限
在初始化完毕之后，将mysql应用目录的权限改为root.mysql,将mysql数据目录权限改为mysql.mysql
为了防止mysql账户篡改mysql目录下的文件



4. mysql配置文件
将mysql服务托管给systemctl管理，并配置开机自启动
在mysql5.6中修改必须使用password加密，在mysql5.7中可以不使用password加密







# 关于mysql的升级

删除原软连
新建新软连

修改元数据
mysql_upgrade -s

-s，只升级视图，不升级数据







# 连接mysql

连接mysql的有两种方式
- tcp/ip,
- socket,socket是类linux平台所特有的，是套接字，用于客户端与mysql服务端在同一台主机上，





# 权限管理




