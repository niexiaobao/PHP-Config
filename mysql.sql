#[用户权限]
#grant

#1.查看用户权限
show grants for John;

#2.创建用户
CREATE USER 'Tom'@'%' IDENTIFIED BY '111111';

#3.用户授权[一般要有权利授权的用户才可以授权]
#ALL为操作权限，包括CURD
GRANT ALL ON testone.* TO 'John'@'%';

#4.删除用户
DROP USER 'John'@'localhost';

#5.刷新系统权限
flush privileges;

#6.查看所有用户
select user,host from mysql.user;

#7.修改用户所属host
update mysql.user set host="localhost" where user="John";