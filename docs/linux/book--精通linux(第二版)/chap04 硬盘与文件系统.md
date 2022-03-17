




# mount命令




## 命令的使用




文件系统的类型




可以通过查看/proc/filesystems文件来获取当前系统都支持那些文件系统
```bash
cat /proc/filesystems
```


please enter passphrase for disk

![image-20220317103915160](https://image.ibiancheng.net/liwuming/202203171039238.png)

![image-20220317104229741](https://image.ibiancheng.net/liwuming/202203171042779.png)






# 在linux系统启动时，出现如下提示信息

please enter passphrase for disk ST500LT012-1DG142(cryptswap1)on none! 

出现这样的提示信息，应该是swap分区被加密了，如何处理呢？




禁用swap加密 cryptsetup remove /dev/mapper/cryptswap1


lsblk

swap分区在sda2分区

vi /etc/fstab
# 删除swap分区行

重新格式化swap分区
mkswap /dev/sda2
# 重新启用
swapon /dev/sda2
# 开机挂载swap




开机挂载文件/etc/fstab





mount命令


与mount命令相关的几个文件
- /etc/fstab
- /etc/mtab
- /proc/mounts

> /etc/mtab是一个指向/proc/mounts文件的链接文件


mount -a会将/etc/fstab文件中定义的所有挂载点都挂上，一般是在系统启动时，脚本中调用，自己最好别用




bind选项















linux系统中常用命令




https://www.cnblogs.com/sparkdev/p/9015312.html




# 文件系统



在磁盘格式化的时候


inode block
用于存放文件的元数据信息，如文件类型，权限，inode信息，可通过stat命令进行查看
```bash
[root@localhost ~]# stat 1.txt 
  File: ‘1.txt’
  Size: 48        	Blocks: 8          IO Block: 4096   regular file
Device: fd00h/64768d	Inode: 25178608    Links: 2
Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)
Context: unconfined_u:object_r:admin_home_t:s0
Access: 2022-03-16 23:33:58.192104514 -0400
Modify: 2022-03-16 23:33:55.077134561 -0400
Change: 2022-03-16 23:36:51.884428842 -0400
 Birth: -
```

Context是什么
Access:访问时间
Modify:内容修改时间
Change:元数据改变时间


元数据是否可以手动修改元数据的时间戳呢
可以滴，使用touch命令即可
touch命令主要有
- -a，仅改变atime和ctime
- -m，仅改变mtime和ctime
- -c，如果文件不存在，则不予创建


data block


> inode

软连接



硬连接

ln命令
1、硬连接的实质是多个文件共用一个inode，每创建一个硬连接，inode的计数会增加1
2、硬连接不能跨文件系统




