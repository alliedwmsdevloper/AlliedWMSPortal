From tomcat:latest
LABEL maintainer "ubuntu88"
ADD ./target/Demo_5.4_AlliedWMS_Deploy_Phase2.war  /usr/local/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT ["catalina.sh","run"]