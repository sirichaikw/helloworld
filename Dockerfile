# Use latest CentOS image
FROM test/tomcat:9.0

MAINTAINER Sirichai Kiatwanitwilai

COPY ./target/HelloWorld.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
