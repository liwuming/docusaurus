

磁盘分区



分区表类型
MBR和GPT分区表



#

GPT分区表最好要拥有的bios boot分区槽


biosboot 2m
/boot 1g
/		20g

> / /home,swap都希望使用centos提供的lvm管理方式，xfs文件系统

/home 5g
swap 1g

 

# 磁盘分区与文件系统设定




修改ip地址


```bash
vi /etc/sysconfig/network-script-ifcfg-ens33

#修改两项
BOOTPROTO=static
ONBOOT=yes


#新增项
IPADDR=192.168.31.100
NETMASK=255.255.255.0
GATEWAY=192.168.31.2
DNS1="119.29.29.29"
```