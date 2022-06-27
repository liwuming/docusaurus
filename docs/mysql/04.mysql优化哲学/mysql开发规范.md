
默认存储引擎使用innodb
字符集默认utf8，如果需要支持表情包，应设置称utf8mb4
行格式
事务的隔离级别


# 建库规范

# 键表规范

innodb禁止使用外键约束，可以通过程序层面实现此需求
存储浮点型，必须使用decimal替代float和double
整形定义中无需定义显示宽度，比如使用int，而不是int(4)
不建议使用enum类型，可使用tinyint来代替
