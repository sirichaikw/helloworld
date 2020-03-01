# Use latest CentOS image
FROM test/tomcat:9.0

MAINTAINER Sirichai Kiatwanitwilai

ENV RUN_USER            tomcat
ENV RUN_GROUP           tomcat

# Add a tomcat user
RUN groupadd -r ${RUN_GROUP} && useradd -g ${RUN_GROUP} -d ${CATALINA_HOME} -s /bin/bash ${RUN_USER}
RUN chown -R tomcat:tomcat $CATALINA_HOME

COPY ./target/HelloWorld.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
