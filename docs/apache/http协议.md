# http协议




两台计算机直接是如何通讯的

http协议是超文本

uri：统一资源标识符
url是一种特殊类型的uri,统一资源定位符，


客户端
http请求

method uri 
headers
[

body
]




method
get
head
put
post
delete
options



服务端
version status 
headers
空行
body


status
2xx系列
	200成功
3xx系列
	301
	302
	304
4xx系列：客户端错误
	401
	403
	404
5xx服务器错误
	500