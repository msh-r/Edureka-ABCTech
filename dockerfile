FROM tomcat:9-jdk17-openjdk-slim
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/
COPY index.jsp /usr/local/tomcat/webapps/ABCtechnologies-1.0/
CMD ["catalina.sh", "run"]
