# Pull base image 
From tomcat:9-jre9

COPY ./webapp.war /usr/local/tomcat/webapps

