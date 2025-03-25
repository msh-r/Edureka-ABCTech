FROM tomcat:9-jdk17-openjdk

COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/

RUN catalina.sh run & sleep 10 && pkill -f 'catalina'

COPY index.jsp /usr/local/tomcat/webapps/ABCtechnologies-1.0/

CMD ["catalina.sh", "run"]

