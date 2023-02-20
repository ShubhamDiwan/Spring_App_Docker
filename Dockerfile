FROM tomcat:9.0

ADD **/*.war /root/apache-tomcat-9.0.71/webapps

EXPOSE 8087

CMD ["catalina.sh","run"]