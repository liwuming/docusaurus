



xshell使用起来很方便，但有一个问题很是让人烦--总是自动断开，这和xshell的重新连接设置有关



解决办法--修改linux服务端的sshd配置

```shell
vi /etc/ssh/sshd_config

找到ClientAliveInterval和ClientAliveCountMax，默认是注释掉的，ClientAliveInterval指服务器向客户端发送时间间隔，ClientAliveCountMax指发送消息的次数。我的系统设置如图：
```

https://blog.csdn.net/a1009563517/article/details/90901603