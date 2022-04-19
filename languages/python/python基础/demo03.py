'''
列表

列表是什么


1、获取列表的指定元素
索引用0开始，对于从后获取时，
索引可以是负数，负数表示从列表的右侧开始


2、列表的遍历



'''
nums = [1,"121",3,4];

for num in nums:
    
    print(num);




'''



添加元素
在末尾添加元素--append

在指定位置添加元素--insert


'''
nums.append(5);
print(nums);
nums.insert(2,100);
print(nums);
#修改值
nums[0] = 0;
print(nums);


# 删除指定元素
'''
根据值删除--remove
根据索引删除--del
---pop
>pop默认从列表的尾部删除元素，也可以指定索引
与del不同的时，pop不仅会删除指定索引的元素，还会返回该元素的值
'''
del nums[3];
print(nums);

nums.remove(100);
print(nums);
num = nums.pop();
print(num);
print(nums);


'''
组织列表
列表排序
1.sort，永久性排序
2.sorted，临时排序
3.reverse，列表反转




列表的最大值、最小值
求和


'''

sum=0;
for i in range(0,101):
    print(i);
    sum += i;
    
print(sum);