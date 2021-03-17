From tomcat:9-alpine
LABEL maintainer "ubuntu88"
ADD ./target/AlliedWMSPortal-0.0.1-Prod-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT ["catalina.sh","run"]
