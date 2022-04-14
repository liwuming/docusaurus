
awk是什么
一个格式化工具

语法格式
awk [options] '[BEGIN{}][parttern]action[END{}]'

options:
-F:分隔符
-v:变量
-f:脚本来自文件


awk -F':' '{print }'

常用变量
FS：
OFS：
NR：行号
NF：字段



不仅支持parttern还支持条件判断和逻辑判断
查找/ect/passwd文件中bash为/sbin/nologin的用户有哪些时
```bash
]$ awk -F':' '$7=="/sbin/nologin"' /etc/passwd
```