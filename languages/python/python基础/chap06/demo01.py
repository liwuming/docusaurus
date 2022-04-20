

person = {'name':'zhangsan','age':10};
print(person);


person['school'] = 'puyang';
print(person);


# 关于字典的遍历
for item,value in person.items():
    print(item);
    print(value);
    

print(person.keys());
print(person.values());