---
id : 1
---

# docker简介

# docker安装
uname -r
cat /etc/redhat-release


yum install -y yum-utils device-mapper-persistent-data lvm2

# 安装完yum-utils可用yum-config-manager
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

# 验证docker的yum源安装成功
yum list docker-ce --showduplicates



在2018年之后的版本，以YY-mm为版本号


yum install -y docker-ce-18.03.1.ce-1.el7.centos


可通过`docker --version`来验证是否安装成功
Docker version 18.03.1-ce, build 9ee9f40


#启动docker服务
systemctl start docker
#开机自启动
systemctl enable docker





# docker术语

仓库
镜像
容器



镜像管理
docker search：查找
docker pull：拉取镜像
docker images ls：列出当前有哪些镜像
docker rmi ：删除镜像


容器管理
docker run


ping -c,count




不输入sudo

执行docker命令时需要root权限

docker search：
docker pull：
docker images：列出版本主机中已经下载镜像
docker rmi:删除镜像


docker run -it --name image command

docker run：
和进程一样，在contain id标识


-p:端口
-e:环境变量
-v:数据卷




docker ps:查看容器列表
docker exec：从外部运行容器内的命令
docker start：启动容器
docker stop：停止容器
docker restart：重启容器
attach命令
docker rm：删除容器



创建docker镜像



2>
2>>

&>：将标准与错误输出保存为文件
1>&2:
2>&1:
|：
$:
``:引用命令
&&：and
{1..10}：用于连续数字



编写dockerfile



第一条指令必须是FROM
注释：作者，邮箱，日期，功能


指令大写，其他小写

from



add：复制
run：运行命令

cmd 
expose：暴露端口



workdir：切换目录
cmd与run指令的区别：










info
inspeact













debootstrap:

trusty:表示ubuntu的一个版本号
> Ubuntu系统的每个版本都有一个更为特色的名字，这个名字由一个形容词和一个动物名称组成，

docker import:



创建docker镜像的两种方式
dockerfile,用的较多
通过容器commit



dockerfile的编写
1.第一条指令必须是from
2.注释以#号开头
3.指令最好大写,参数最好小写,此非必须,但最好作为规范
4.


docker上下文
> 所有位于Dockerfile目录下的文件都成为上下文,特别是在创建镜像时,由于所有上下文都会传送到docker守护进程,所以不要将非必要的文件放到该目录


若需要从上下文中忽略某些文件或目录时,可使用.dockerignore文件即可.


# 镜像标签,默认laster
FROM image:tag

# maintainer:用于设置镜像创建者的信息,格式自由,一般输入姓名与电子邮箱即可
MAINTAINER liwuming,china<1459543371@qq.com>



USER:用于设置运行命令的用户账号


使用docker实现php项目部署





docker配置

cat /etc/docker/daemon.json <<-EOF


EOF




docker pull php:7.4.28












