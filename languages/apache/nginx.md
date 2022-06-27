


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








关于nginx的发行版本
- nginx开源版
- nginx plus商业版
- openresty
- tengine



# nginx开源版安装



上nginx官网下载nginx的源码包
s

安装nginx的依赖包
yum install -y gcc-c++ pcre pcre-devel zlib zlib-devel openssl openssl-devel 






wget http://mirrors.aliyun.com/repo/Centos-7.repo



2）备份并替换系统的repo文件
cp Centos-7.repo /etc/yum.repos.d/
cd /etc/yum.repos.d/
mv CentOS-Base.repo CentOS-Base.repo.bak
mv Centos-7.repo CentOS-Base.repo （区分大小写）

3）执行yum源更新命令
yum clean all && yum makecache && yum update



yum list|grep aliyun

配置完毕。






编译安装
./configure --sbin-path=/usr/local/nginx/nginx \
    --conf-path=/usr/local/nginx/nginx.conf \
    --pid-path=/usr/local/nginx/nginx.pid \
    --with-http_ssl_module \
    --with-pcre=../pcre2-10.39 \
    --with-zlib=../zlib-1.2.11
	
	
	./configure --sbin-path=/usr/local/nginx/nginx \
--conf-path=/usr/local/nginx/nginx.conf \
--pid-path=/usr/local/nginx/nginx.pid \
--with-http_ssl_module \
--with-pcre=/usr/local/src/pcre-8.34 \
--with-zlib=/usr/local/src/zlib-1.2.8 \
--with-openssl=/usr/local/src/openssl-1.0.1c
	
	
make && make install





nginx的配置文件
一主多傅

































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





