


shell的种类，默认shell是bash，如何查看--$SHELL



# 如何查看当前环境支持那些shell类型？


/etc/bash


# 关于bash的特性
- tab键可实现代码，路径自动不全
当可以唯一匹配时，一次tab键即可补全，
当匹配多个时，两次tab键可出现列表
当无匹配时，无响应

对于命令，会根据系统环境变量--path，去匹配

- 命令历史记录
在使用过程中保存在内存中，当系统正常离开时，会将内存中的历史命令记录刷新到bash_history文件中

- 命令展开
~,当前用户的家目录，user_name~，指定用户的家目录
{}




命令在执行时，会有状态码返回
执行成功时，会返回0








别名机制--alias
1、查看别名
2、设置别名





bash特性之--命令hash
> hash命令用于显示与清除命令运行时系统有限查询的哈希表


结果发现hash表中不会显示pwd命令，也不会显示hash命令本身，经使用type命令，发现pwd和hash命令均为系统内建命令，因而不会在hash表中显示

```bash
:~$ type pwd
pwd is a shell builtin
:~$ type hash
hash is a shell builtin
```
[注]type命令




-d 删除某一个或多个命令
-l 显示hash表中的命令
-r 删除hash表中的所有命令
-p 使用pathname路径作为name命令的全路径


bash命令加速--key-value




bash之变量
变量是对一段内存空间的引用




变量的类型

环境变量

全局变量
局部变量
仅对创建它们的shell可见





变量的使用
name=value
>name与value之间不能有空格



bash中也可以使用export

删除环境变量
unset variable_name;




bash为弱类型的脚本语言，所有变量均为字符串类型，不支持浮点类型，除非借助外部工具


bash为若类型的脚本语言
1、使用变量时，无需声明直接使用
2、不支持浮点类型
3、key=value，之间无空格



引用变量的值时--$variable_name,${variable_name}
销毁变量 unset variable_name;

变量--数字，字母+下划线，且不能数字开头


docker开发




bash的一些环境变量
HOME--当前用户的家目录
PATH--
ps1--shell命令行界面的主提示符
ps2--




特殊变量
- $?:
- 





环境变量的赋值
```bash
# 方法1：
key=value
export key

# 方法2：
export key=value

# 方法3：
declare -x key=value
```

关于本地变量与环境变量的区别
1、声明方式不同
2、作用域，环境变量对自shell有效，可多级


