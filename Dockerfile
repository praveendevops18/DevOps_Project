#FROM ubuntu 
#MAINTAINER mithunec@gmail.com
#RUN apt-get update 
# RUN apt-get install apache –y 
# RUN service nginx start
# EXPOSE 80
#CMD [“echo”,”Image created”] 

FROM tomcat:8
LABEL app=myapp
COPY target/*.war /usr/local/tomcat/webapps/myapp-1.0.0.war
