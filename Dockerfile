FROM tomcat:9.0

ADD **/*.war /root/apache-tomcat-9.0.71/webapps

EXPOSE 8080

CMD ["/root/apache-tomcat-9.0.71/bin/catalina.sh","run"]