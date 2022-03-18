

# LVM是什么
logical volume manager--逻辑卷管理

> 将硬件通过软件来管理，

优势
文件系统

使用 LVM 将获得更好的可扩展性和可操作性，但却损失了可靠性和存储性能，总的说来就是在这两者间选择。

# LVM的管理





LVM术语

PV--物理卷
VG--卷组
LV--逻辑卷

PE--physical  extent，默认为4Mb
LE--logical extent，




```bash
# 安装lvm
yum install -y lvm2

# 创建
pvcreate 


```


物理卷常用操作
pvcreate
pvs
pvdisplay
pvremove
pvscan：扫描系统中的连接的所有硬盘


# raid是什么






# 软件包的管理



# 进程的管理

ps


top

进程可以在前台运行，也可以在后台运行


job








# 计划任务




# 网络管理

七层模型



术语

子网掩码
默认网关


解析主机名

以太网
防火墙



查看自己计算机的ip地址--ifconfig
```bash
[root@localhost ~]# ifconfig
ens33: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
	inet 192.168.31.100  netmask 255.255.255.0  broadcast 192.168.31.255
	inet6 fe80::f3a2:870a:a2b7:c091  prefixlen 64  scopeid 0x20<link>
	ether 00:0c:29:d8:62:2e  txqueuelen 1000  (Ethernet)
	RX packets 68  bytes 8060 (7.8 KiB)
	RX errors 0  dropped 0  overruns 0  frame 0
	TX packets 78  bytes 8896 (8.6 KiB)
	TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
	inet 127.0.0.1  netmask 255.0.0.0
	inet6 ::1  prefixlen 128  scopeid 0x10<host>
	loop  txqueuelen 1000  (Local Loopback)
	RX packets 0  bytes 0 (0.0 B)
	RX errors 0  dropped 0  overruns 0  frame 0
	TX packets 0  bytes 0 (0.0 B)
	TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```





# 第七章 系统配置



