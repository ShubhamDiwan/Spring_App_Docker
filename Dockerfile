FROM openjdk:11.0.12-jdk-slim

ADD **/*.war /root/apache-tomcat-9.0.71/webapps

ADD **/*.war /mkyong.war

ENTRYPOINT ["sh","-c","java -jar /mkyong.war"]

EXPOSE 8088