# image to build a webapp image

FROM tomcat:latest
RUN rm -rf webapp
RUN mv webapps.dist webapp
EXPOSE 8080
COPY $WORKSPACE/webapp/target/webapp-6.0-SNAPSHOT.war /usr/local/tomcat/webapp
