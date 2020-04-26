## Pull base image 
#From tomcat:8-jre8 

# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps
#RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

FROM tomcat:8.0
MAINTAINER David Ford <dford@smart-soft.com>
#ENV DB_HOST mySqlServer
#ENV DB_USER joeBlow
#ENV DB_PASSWORD bla bla bla
EXPOSE 8080
RUN rm -fr /usr/local/tomcat/webapps/ROOT
COPY target/webapp /usr/local/tomcat/webapps/ROOT
