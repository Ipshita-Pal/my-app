#FROM tomcat
# Take the war and copy to webapps of tomcat
#COPY target/*.war /usr/local/tomcat/webapps/myweb.war
#COPY target/*.war /usr/local/tomcat/webapps/
#EXPOSE 8085
#CMD apachectl -D FOREGROUND

FROM tomcat
# Take the war and copy to webapps of tomcat
#COPY target/*.war /usr/local/tomcat/webapps/
ADD target/*.war /usr/local/tomcat/webapps
#EXPOSE 8080
CMD ["catalina.sh", "run"]
