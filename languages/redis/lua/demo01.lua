
local number sum=0;
local tables nums = {1,2,3,4,5,6,7,8,9,10};

for num = #nums
do
	sum += num;
end

print(sum);



ipairs():

在redis中执行Lua脚本的两种方法：eval和evalsha

eval

evalsha






对于redis的认知




关于redis中的lua脚本
lua脚本功能为redis开发和运维人员带来了三个好处
- lua脚本在redis中是源自执行的，执行过程中间不会插入其他命令
- lua脚本可以帮助开发和运维人员创造自己定制的命令，并可以讲这些命令常驻在redis内存中，实现复用的效果
- lua脚本可以将多条命令一次性打包，有效减少网络开销



redis如何管理lua脚本
redis提供了4个命令对lua脚本的管理
- script load
- script exists：判断sha1是否已经加载到内存中
- script flush：用于清除redis内存中已经加载的所有lua脚本
- script kill：杀掉正在执行的lua脚本




# 秒杀系统设计

