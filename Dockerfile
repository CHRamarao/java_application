FROM tomcat:8.0.20-jre8
COPY target/grants.war /usr/local/tomcat/webapps/
COPY tomcat-users.xml /etc/tomcat/
RUN sh /usr/local/tomcat/bin/catalina.sh stop
RUN sleep 30
RUN sh /usr/local/tomcat/bin/catalina.sh start
