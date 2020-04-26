# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY ./webapp.war .
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
