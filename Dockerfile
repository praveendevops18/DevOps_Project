#FROM ubuntu 
#MAINTAINER mithunec@gmail.com
#RUN apt-get update 
# RUN apt-get install apache –y 
# RUN service nginx start
# EXPOSE 80
#CMD [“echo”,”Image created”] 

FROM ubuntu
COPY target/*.war /
EXPOSE 8080
COPY target/*.war /usr/local/tomcat/webapps/myapp.war
