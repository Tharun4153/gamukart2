FROM ubuntu:20.04 
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-9.0.85.tar.gz /root
COPY target/gamutkart.war /root/apache-tomcat-9.0.85/webapps
ENTRYPOINT /root/apache-tomcat-9.0.85/bin/startup.sh && bash

