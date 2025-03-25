FROM tomcat:9-jdk17-openjdk-slim
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
