FROM ubuntu:20.04 

# Update the package repository and install OpenJDK 11
RUN apt-get update && apt-get install -y openjdk-11-jdk

# Set JAVA_HOME environment variable
ENV JAVA_HOME /usr

# Add and extract Apache Tomcat
ADD apache-tomcat-9.0.85.tar.gz /root

# Copy the WAR file to the Tomcat webapps directory
COPY target/gamutkart.war /root/apache-tomcat-9.0.85/webapps

# Set the working directory
WORKDIR /root/apache-tomcat-9.0.85

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat and keep the container running
CMD ["bin/catalina.sh", "run"]


