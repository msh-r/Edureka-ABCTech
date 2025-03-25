FROM tomcat:9-jdk17-openjdk-slim

# Copy the WAR file to Tomcat's webapps directory
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/

# Start Tomcat in the background, wait for extraction, then stop it
RUN catalina.sh run & sleep 10 && kill $(ps aux | grep '[c]atalina' | awk '{print $2}')

# Copy index.jsp after WAR extraction
COPY index.jsp /usr/local/tomcat/webapps/ABCtechnologies-1.0/

CMD ["catalina.sh", "run"]


