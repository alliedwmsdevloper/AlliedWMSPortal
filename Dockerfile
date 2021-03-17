From tomcat:jdk9
LABEL maintainer "ubuntu88"
ADD ./target/AlliedWMSPortal-0.0.1-Prod-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8081
ENTRYPOINT ["catalina.sh","run"]
