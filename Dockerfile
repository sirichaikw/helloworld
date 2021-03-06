# Use latest CentOS image
FROM test/tomcat:9.0

MAINTAINER Sirichai Kiatwanitwilai

COPY ./target/HelloWorld.war /usr/local/tomcat/webapps/

ENV RUN_USER            tomcat
ENV RUN_GROUP           tomcat

# Add a tomcat user
RUN groupadd -r ${RUN_GROUP} && useradd -g ${RUN_GROUP} -d ${CATALINA_HOME} -s /bin/bash ${RUN_USER}
RUN chown -R tomcat:tomcat $CATALINA_HOME
RUN chmod 777 -R $CATALINA_HOME

CMD ["catalina.sh", "run"]
