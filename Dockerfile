FROM tomcat:10.0.0-M4-jdk8-openjdk
ADD ./index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp
ADD ./context.xml /usr/local/tomcat/conf/context.xml

# Gadget lib
ADD ./groovy-2.3.9.jar /usr/local/tomcat/lib/groovy-2.3.9.jar

# Malicious binary
ADD ./groovy.session /usr/local/tomcat/groovy.session

EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
