



# 网络管理


# 软件管理

# 进程管理

# 文件，权限，用户管理


# 文件系统








# 开机流程


# 内核研究





# 网络安全/网络渗透



selinux，防火墙




sed编辑器




关于docker和redis

# docker是什么


## docker安装
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

yum install -y yum-utils device-mapper-persistent-data lvm2
  
yum list docker-ce --showduplicates | sort -r
docker-ce.x86_64            18.03.0.ce-1.el7.centos             docker-ce-stable

yum install -y docker-ce-18.03.0.ce-1.el7.centos
## 属于
docker仓库
image镜像
container容器



search
pull

镜像管理
docker search
docker pull
docker image ls





容器的生命周期
rm 