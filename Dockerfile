FROM tomcat:9.0

ADD **/*.war /root/apache-tomcat-9.0.71/webapps

EXPOSE 9090

CMD ["catalina.sh","run"]