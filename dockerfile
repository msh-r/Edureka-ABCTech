FROM tomcat:9-jdk17-openjdk-slim

# Copy the WAR file to Tomcat's webapps directory
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/

# Start Tomcat and let it extract the WAR file
RUN catalina.sh run & sleep 10 && pkill -f 'catalina'

# Copy index.jsp after WAR extraction
COPY index.jsp /usr/local/tomcat/webapps/ABCtechnologies-1.0/

CMD ["catalina.sh", "run"]

