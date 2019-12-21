
- [ ] 查询sql 用户主机名
```
MariaDB [(none)]> select user,host ,authentication_string from mysql.user;
+------------+-------------------------------------------------+-----------------------+
| user       | host                                            | authentication_string |
+------------+-------------------------------------------------+-----------------------+
| root       | localhost                                       |                       |
| root       | ip-172-31-46-85.ap-northeast-1.compute.internal |  ************         |           
| root       | 127.0.0.1                                       |  ************         |           
| root       | ::1                                             |   ************        |           
|            | localhost                                       |   ************        |
|            | ip-172-31-46-85.ap-northeast-1.compute.internal |
```
- [ ] 创建、删除、查找、查看  用户权限

- [ ] 创建用户

```
create user test@'localhost';

```


- [ ] 查看用户权限

```

show grants for root@'localhost'；
 +---------------------------------------------------------------------+
| Grants for root@localhost                                           |
+---------------------------------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION |
| GRANT PROXY ON ''@'' TO 'root'@'localhost' WITH GRANT OPTION        |
+---------------------------------------------------------------------+

```


- [ ] 删除用户
```
drop user test@'localhost';
```
- [ ] 回收用户权限
```
revoke delete on test.* from test@'localhost%';
```

- [ ] 创建增删改查账号
```
GRANT Select,Update,insert,delete ON *.* TO test@"%"  IDENTIFIED BY "test123456"
```

- [ ] 创建表权限
```
grant create on testdb.* to test@'192.168.0.%';
```
- [ ] mysql 外键权限
```
grant references on testdb.* to test@'192.168.0.%'; 
```
- [ ] grant 操作mysql 索引权限

```
grant index on testdb.* to test@'192.168.0.%'; 
```
