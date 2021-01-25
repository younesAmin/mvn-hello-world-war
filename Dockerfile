FROM tomcat

COPY target/my-app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
COPY target/my-app-1.0-SNAPSHOT/ /usr/local/tomcat/webapps/ROOT

EXPOSE 8080
