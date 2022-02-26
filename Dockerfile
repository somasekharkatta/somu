FROM tomcat:8.0

MAINTAINER 1010101

RUN rm -rf /usr/local/tomcat/webapps/

COPY target/mvn-hello-world.war /usr/local/tomcat/webapps/

USER root

EXPOSE 8080

WORKDIR /usr/local/tomcat/webapps

CMD ["catalina.sh", "run"]
