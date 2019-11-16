


#### 安装部署
- [x] 安装Java JDK8


```
 cat /etc/profile

JAVA_HOME=/usr/local/jdk8
PATH=$PATH:$JAVA_HOME/bin
export JAVA_HOME PATH

soure  /etc/profile
```
- [x] 首先启动zookeeper容器及kafka

```
bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
bin/kafka-server-start.sh config/server.properties

查看启动状态端口
[root@ip-172-31-44-35 jdk8]# lsof -i:9092
COMMAND   PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
java    24059 root  108u  IPv6  54460      0t0  TCP *:XmlIpcRegSvc (LISTEN)
java    24059 root  124u  IPv6  53920      0t0  TCP ip-172-31-44-35.ap-northeast-1.compute.internal:46928->ip-172-31-44-35.ap-northeast-1.compute.internal:XmlIpcRegSvc (ESTABLISHED)
java    24059 root  125u  IPv6  54464      0t0  TCP ip-172-31-44-35.ap-northeast-1.compute.internal:XmlIpcRegSvc->ip-172-31-44-35.ap-northeast-1.compute.internal:46928 (ESTABLISHED)
[root@ip-172-31-44-35 jdk8]# lsof -i:2181
COMMAND   PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
java    13042 root  103u  IPv6  36123      0t0  TCP *:eforward (LISTEN)
java    13042 root  104u  IPv6  52640      0t0  TCP localhost:eforward->localhost:50240 (ESTABLISHED)
java    24059 root  103u  IPv6  53918      0t0  TCP localhost:50240->localhost:eforward (ESTABLISHED)
```
- [x] 指定zookeeper列表 创建topic

```
[root@ip-172-31-44-35 kafka_2.12-2.3.0]# bin/kafka-topics.sh --zookeeper localhost:2181 --create --topic test1 --partitions 3 --replication-factor 1
Created topic test1.
[root@ip-172-31-44-35 kafka_2.12-2.3.0]# 

```
- [x] 测试

```
[root@ip-172-31-44-35 kafka_2.12-2.3.0]# bin/kafka-topics.sh --zookeeper localhost:2181 --describe --topic test1
Topic:test1	PartitionCount:3	ReplicationFactor:1	Configs:
	Topic: test1	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: test1	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: test1	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
[root@ip-172-31-44-35 kafka_2.12-2.3.0]# 

```
- [x] 手动安装zookeeper

```
wget https://www-eu.apache.org/dist/zookeeper/stable/apache-zookeeper-3.5.6-bin.tar.gz
tar -xf apache-zookeeper-3.5.6-bin.tar.gz
bin/zkServer.sh start conf/zoo_sample.cfg 
ZooKeeper JMX enabled by default
Using config: conf/zoo_sample.cfg
Starting zookeeper ... STARTED

```
