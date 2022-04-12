---
sidebar_position : 0
---

# http协议
无状态的


浏览器收到一个url时是如何进行工作的
- 解析出主机名
- 由主机名解析出ip地址
- 获取端口号
- 建立链接
- 浏览器向服务器发送一条报文



# nginx
nginx的安装
yum install yum-utils
cat>/etc/yum.repos.d/nginx.repo <<-EOF
[nginx-stable]
name=nginx stable repo
baseurl=http://nginx.org/packages/centos/$releasever/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true

[nginx-mainline]
name=nginx mainline repo
baseurl=http://nginx.org/packages/mainline/centos/$releasever/$basearch/
gpgcheck=1
enabled=0
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true
EOF


yum-config-manager --enable nginx-mainline

yum install nginx


192.168.31.100

可以检查以下内容
首先检查防护墙服务是否开启
systemctl status firewalld


firewall-cmd命令

#打开80端口
firewall-cmd --add-port=80/tcp --
> 若需要永久打开某端口，需要添加--permanent参数
firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --add-port=443/tcp --permanent

如果是永久开启端口需要执行firewall-cmd --reload命令，若是临时开启端口，不需要执行此命令，执行此命令会失效
firewall-cmd --reload
# 查看开放的端口
firewall-cmd --list-ports    

## 源码编译安装
安装依赖


## yum安装




nginx的配置
nginx的配置文件一主多辅
主配置文件/etc/nginx/nginx.conf
辅配置文件/etc/nginx/conf.d/domain.conf



rpm -qc nginx


nginx日志管理
/var/log/nginx/access.log

nginx模块管理
/etc/nginx/modules/



nginx命令
- -v
- -V：查看nginx的详细信息















./configure --prefix=/etc/nginx 
            --sbin-path=/usr/sbin/nginx 
			--modules-path=/usr/lib64/nginx/modules 
			--conf-path=/etc/nginx/nginx.conf 
			--error-log-path=/var/log/nginx/error.log 
			--http-log-path=/var/log/nginx/access.log
			--pid-path=/var/run/nginx.pid 
			--lock-path=/var/run/nginx.lock 
			--http-client-body-temp-path=/var/cache/nginx/client_temp 
			--http-proxy-temp-path=/var/cache/nginx/proxy_temp 
			--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 
			--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 
			--http-scgi-temp-path=/var/cache/nginx/scgi_temp 
			--user=nginx 
			--group=nginx 
			--with-compat 
			--with-file-aio 
			--with-threads 
			--with-http_addition_module 
			--with-http_auth_request_module 
			--with-http_dav_module 
			--with-http_flv_module 
			--with-http_gunzip_module 
			--with-http_gzip_static_module 
			--with-http_mp4_module 
			--with-http_random_index_module 
			--with-http_realip_module 
			--with-http_secure_link_module 
			--with-http_slice_module 
			--with-http_ssl_module 
			--with-http_stub_status_module 
			--with-http_sub_module 
			--with-http_v2_module 
			--with-mail 
			--with-mail_ssl_module 
			--with-stream 
			--with-stream_realip_module 
			--with-stream_ssl_module 
			--with-stream_ssl_preread_module 
			--with-cc-opt='-O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector-strong 
			--param=ssp-buffer-size=4 -grecord-gcc-switches -m64 -mtune=generic -fPIC' 
			--with-ld-opt='-Wl,-z,relro -Wl,-z,now -pie'




nginx配置文件


./configure 

--prefix选项指定了nginx软件的安装路径



events{}
http{}

## http块
代理，缓存和日志定义等绝大多数的功能和第三方模块的配置都可以放在这个模块中






# nginx虚拟主机配置


# nginx日志管理

