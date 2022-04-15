

# 用户管理
关于用户的两个文件
/etc/passwd,用户信息
/etc/shadow,密码信息


## 添加用户 

## 编辑用户信息

## 查询用户信息

> 

## 删除用户




# dot文件










linux命令


设置密码--liwuming
sodo passwd
admin123



win10系统在第一次打开时，会让用户设置自己的用户名和密码，但这个自己新建的用户是非root用户，

当我们试图切换到root账户时，会提示我们输入root用户的密码，但是

```bash
jd@pc-hz20122309:~$ sudo passwd
[sudo] password for jd:输入当前用户的密码
Enter new UNIX password:设置root用户的密码
Retype new UNIX password:再次输入设置root用户的密码
passwd: password updated successfully

# 现在就可以通过su命令切换到root账户了
su - root
```



