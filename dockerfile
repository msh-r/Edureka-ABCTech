FROM tomcat:10.1-jdk17
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
