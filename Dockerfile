# image to build a webapp image

FROM tomcat:latest
RUN rm -rf build_webapps
RUN mv webapps.dist build_webapps
EXPOSE 8080
COPY $WORKSPACE/build_webapp/target/webapp-6.0-SNAPSHOT.war /usr/local/tomcat/webapps
