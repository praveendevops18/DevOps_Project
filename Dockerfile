#FROM ubuntu 
#MAINTAINER mithunec@gmail.com
#RUN apt-get update 
# RUN apt-get install apache –y 
# RUN service nginx start
# EXPOSE 80
#CMD [“echo”,”Image created”] 

#FROM ubuntu
#COPY target/*.war /
#EXPOSE 8080
#COPY target/*.war /usr/local/tomcat/webapps/myapp.war

#FROM tomcat:8-jre8 
# Maintainer 
#MAINTAINER "praveenbdevops18@gmal.com" 
#COPY ./myapp-1.0.0.war /usr/local/tomcat/webapps


FROM tomcat:8
#LABEL app=my-app
COPY target/*.war /usr/local/tomcat/webapps/
