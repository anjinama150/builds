#!/bin/bash
rm -rf hello-world-war
echo enter the git clane
read a
git clone $a
cd hello-world-war
mvn package
cp -r target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps
sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh
sleep5
sh /opt/apache-tomcat-10.0.27/bin/startup.sh
exec bash
