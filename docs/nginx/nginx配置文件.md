


若是通过yum安装的nginx，可通过`rpm -qc`命令来查看nginx的配置文件
]# rpm -qc nginx
/etc/logrotate.d/nginx
/etc/nginx/conf.d/default.conf
/etc/nginx/fastcgi_params
/etc/nginx/mime.types
/etc/nginx/nginx.conf
/etc/nginx/scgi_params
/etc/nginx/uwsgi_params



/etc/nginx/nginx.conf是nginx的主配置文件



虚拟主机：



http块


每个http都可以包含多个server块，每一个server块就相当于一台虚拟主机


server块


最常见的两个配置项：

ip地址

location块



http事务






反向代理服务器

代理服务器的作用
缓存







































https://cloud.tencent.com/developer/article/1793766