# linux系统的架构





# linux的启动过程



# linux引导程序--GRUB和LILO



## linux引导程序--GRUB



# systemd

## systemd是什么









> systemd并不是一个命令，而是一组命令，涉及到系统管理的方方面面



localectl命令用于查看本地化设置
 
timedatectl命令用于查看本地时区设置

loginctl命令用于查看当前登录的用户
> 



list-user
show-user user_name


> ctl是什么意思?--control






systemctl start name
systemctl stop name
systemctl status name


systemctl status name

条件式重启

# 重载或重启服务
systemctl reload-restart name

# 重载或条件式重启服务
systemctl reload-or-try-restart name

# 查看服务的状态
systemctl is-active name





设置服务开机启动 systemctl enable name
禁止服务开机启动 systemctl disable name

查看某服务能否开机自启

systemctl is-enabled name


mark和disable



查看服务的依赖关系
systemctl list-dependencies name





ps--process status
pwd--print work directory
