FROM tomcat:8.5-jdk11-openjdk-slim

ADD **/*.war /root/apache-tomcat-9.0.71/webapps

EXPOSE 8080

CMD ["catalina.sh","run]