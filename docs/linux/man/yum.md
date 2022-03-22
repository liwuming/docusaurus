

# yum命令




repolist
默认显示enable，若要显示全部all


```bash
# 显示
yum repolist

yum repolist all
# 仅显示被禁用的仓库
yum repolist disable
```

list：显示程序包
deplist：依赖关系




- all|glob_exp1

可使用glob通配符

available|installed|updates[glob_exp]


install


update：版本升级
localupdate
downgrade：版本降级




remove


查看程序包的信息
yum info


clean--清除本地缓存


makecache

search
模糊匹配--包名和summary信息




yum history
> 查看yum事务历史

list stats


rpm无法解决软件依赖问题





