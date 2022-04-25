


在php中如何使用RabbitMQ
先用phpinfo()查看php的相关信息

PHP Version 7.2.33
Architecture	x64
Thread Safety	enabled



windows下的php有两个版本，线程安全（Thread Safe）和非线程安全（Non Thread Safe）。由于Linux/Unix系统采用的是多进程的工作方式，所以linux服务器下的PHP，没有PHP线程安全和非线程安全版的区分。
TS是指具有多线程能力的构建。NTS是指单线程构建。
TS二进制文件的用例涉及与作为模块加载到Web服务器的多线程SAPI和PHP进行交互。
对于NTS二进制文件，广泛的用例是通过FastCGI协议与Web服务器进行交互，不使用多线程（也可以是CLI）。

2、如果你是PHP+apache；请选择：PHP线程安全（Thread Safe（TS））；


http://pecl.php.net/package/amqp







rabbitmq+redis+php实现秒杀








# 如何实现延迟服务
- 30分钟内为付款，则取消订单
- 

















https://www.cnblogs.com/hello-/articles/10345026.html