[TOC]


#### 安装ansible

```
[root@Jumpserver01 ~]# yum install -y ansible

```

#### ansible hosts 配置文件写法
##### 普通写法，主机名写法或用途名写法
```
[web]
666369a.com ansible_ssh_host=3.112.187.42 ansible_ssh_user=centos ansible_ssh_private_key_file=/home/centos/filek/dj-linux.pem ansible_ssh_port=22
lbl010.com ansible_ssh_host=3.114.129.148  ansible_ssh_user=centos ansible_ssh_private_key_file=/home/centos/filek/dj-linux.pem ansible_ssh_port=22
Operation-server ansible_ssh_host=54.250.208.73  ansible_ssh_user=centos ansible_ssh_private_key_file=/home/centos/filek/dj-linux.pem ansible_ssh_port=22

[hotupdate]
chq0421.com ansible_ssh_host=54.64.45.172 ansible_ssh_user=centos ansible_ssh_private_key_file=/home/centos/filek/dj-linux.pem ansible_ssh_port=22

[load-server]
ys-load  ansible_ssh_host=3.114.132.4 ansible_ssh_user=centos ansible_ssh_private_key_file=/home/centos/filek/dj-linux.pem ansible_ssh_port=22
game-load  ansible_ssh_host=52.68.181.195 ansible_ssh_user=centos ansible_ssh_private_key_file=/home/centos/filek/dj-linux.pem ansible_ssh_port=22

[zabbix-server]
zabbix-server  ansible_ssh_host=3.114.203.32 ansible_ssh_user=centos ansible_ssh_private_key_file=/home/centos/filek/dj-linux.pem ansible_ssh_port=22

```

##### 连续的IP写法

```
name1 ansible_ssh_host=192.168.1.[20:50] ansible_ssh_user="root" ansible_ssh_pass="1234" ansible_ssh_port=22
```
##### 常用配置参数

```
    ansible_ssh_host                    # 目标主机地址
    ansible_ssh_port                    # 目标主机端口，默认22
    ansible_ssh_user                    # 目标主机用户
    ansible_ssh_pass                    # 目标主机ssh密码
    ansible_sudo_pass                 # sudo密码
    ansible_sudo_exe                    
    ansible_connection               # 与主机的连接类型，比如：local,ssh或者paramiko
    ansible_ssh_private_key_file  # 私钥地址
    ansible_shell_type                 # 目标系统的shell类型
    ansible_python_interpreter   # python版本
```

##### ansible 执行命令

```
ansible all -m 命令 -a "参数"
```





##### ansible 常用执行命令


###### 查看磁盘
```
ansible alyun-hotupdate -a 'df -h'
```
###### 查看某个目录
```
ansible alyun-hotupdate -a 'ls -l /home'
```
###### 安装某个命令\模块
```
ansible alyun-hotupdate -m  yum -a 'name=lrzsz' -b
```
###### copy 文件
```
ansible test -m copy -a 'src=/etc/passwd dest=/tmp/passwd'
src --- 源文件
dest --- 目标文件
```
###### 查看所有节点服务器时间
```
ansible all -a 'date'
```
###### 批量添加定时任务
```
ansible web -m cron -a 'minute="*/1" job="/usr/bin/echo hehe" name="test hello"'
```
###### 将指定url上的文件下载到/tmp下
```
ansible all -m get_url -a 'url=http://10.1.1.116/favicon.ico dest=/tmp'
```
###### touch 一个文件
```
ansible zabbix-server  -a 'touch '/home/test.txt''
```
###### 拷贝文件到远程服务器
```
 ansible zabbix-server -m copy -a "src=/home/test1.txt dest=/home backup=yes"
 --其中backup 为覆盖原有文件
 查看是否拷贝成功
 [root@Jumpserver01 ~]# ansible zabbix-server  -a 'ls -s '/home/''
[DEPRECATION WARNING]: The TRANSFORM_INVALID_GROUP_CHARS settings is set to allow bad characters in group names by default, this will change, 
but still be user configurable on deprecation. This feature will be removed in version 2.10. Deprecation warnings can be disabled by setting 
deprecation_warnings=False in ansible.cfg.
 [WARNING]: Invalid characters were found in group names but not replaced, use -vvvv to see details

 [WARNING]: Found both group and host with same name: zabbix-server

zabbix-server | CHANGED | rc=0 >>
总用量 0
0 centos
0 test1.txt
0 test.txt

```
###### 拷贝远程服务器文件到本地

```
 ansible zabbix-server -m fetch -a "src=/home/test.txt dest=/home force=yes "
执行结果
zabbix-server | CHANGED => {
    "changed": true, 
    "checksum": "da39a3ee5e6b4b0d3255bfef95601890afd80709", 
    "dest": "/home/zabbix-server/home/test.txt", 
    "md5sum": "d41d8cd98f00b204e9800998ecf8427e", 
    "remote_checksum": "da39a3ee5e6b4b0d3255bfef95601890afd80709", 
    "remote_md5sum": null
}
```

#### 常用模块 

##### command模块

```
ansible  默认不带 -m 就执行command模块
不支持管道，不能批量执行命令
```

##### shell模块

```
使用shell模块，在远程命令通过/bin/sh来执行
ansible myservers  -a ". .bash_profile;ps -fe |grep sa_q" -m shell
```
##### scripts模块

```
ansible myservers  -m script -a "/opt/app/target.sh"
```
proxy_connect_timeout 10s;