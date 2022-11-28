#!/bin/bash
sudo apt update
sudo apt install default-jdk
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz
tar -xvzf /opt/apache-tomcat-10.0.27.tar.gz
cd apache-tomcat-10.0.27
vi conf/tomcat-users.xml
vi webapps/manager/META-INF/context.xml
vi webapps/host-manager/META-INf/context.xml
cd ../../
git clone https://github.com/anjinama150/hello-world-war.git
cd hello-world-war
mvn package
cd target
cp -r hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps
sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh
sleep 5
sh /opt/apache-tomcat-10.0.27/bin/startup.sh
