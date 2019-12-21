#!/bin/bash

mkdir -p /usr/local/JDK8
tar	-xf jdk-8u231-linux-x64.tar.gz -C  /usr/local/JDK8
echo -e 'export JAVA_HOME=/usr/local/JDK8/jdk1.8.0_231/\nexport JRE_HOME=${JAVA_HOME}/jre\nexport CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib:$CLASSPATH\nexport JAVA_PATH=${JAVA_HOME}/bin:${JRE_HOME}/bin\nexport PATH=$PATH:${JAVA_PATH}' >>/etc/profile
source /etc/profile	
java -version

