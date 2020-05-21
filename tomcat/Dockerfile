FROM tomcat:9.0.1-alpine

MAINTAINER Uchiyama <shintaro.0112@gmail.com>

ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

RUN rm -rf /usr/local/tomcat/webapps/ROOT

CMD ["catalina.sh", "run"]
