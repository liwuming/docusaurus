

wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo



更新镜像源

yum clean all
yum makecache


yum update
