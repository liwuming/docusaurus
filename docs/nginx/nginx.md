


nginx服务管理





linux
shell
KVM
docker
python
ELK
Aabbix
Ansible
MyCat

软件管理


mysql事务安全+索引




redis
mogodb



关于nginx
nginx是一个高性能的web服务器，占用内存少，并发性能高




nginx的安装

yum repolist



yum install -y gcc-c++ openssl openssl-devel pcre pcre-devel zlib zlib-devel


yum install -y nginx

./configure \
--prefix=/usr/local/nginx \
--pid-path=/var/run/nginx/nginx.pid \
--lock-path=/var/lock/nginx.lock \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--with-http_gzip_static_module \
--http-client-body-temp-path=/var/temp/nginx/client \
--http-proxy-temp-path=/var/temp/nginx/proxy \
--http-fastcgi-temp-path=/var/temp/nginx/fastcgi \
--http-uwsgi-temp-path=/var/temp/nginx/uwsgi \
--http-scgi-temp-path=/var/temp/nginx/scgi \
--with-http_stub_status_module \
--with-http_ssl_module \
--with-file-aio \
--with-http_realip_module






准备工作
useradd -r -s /sbin/nologin nginx  

setenforce 0
getenforce

systemctl disable firewalld
systemctl stop firewalld
































# 软件安装

首先看环境能不能ping通外网
ping mirrors.aliyun.com

mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup

wget /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
wget http://mirrors.aliyun.com/repo/Centos-7.repo


# 清除yum缓存
yum clean all
# 缓存阿里云源
yum makecache
# 测试阿里云源 
yum list




# http协议





