FROM lionelman45/rhel7
MAINTAINER team@wipro.com

# RUN mkdir -p /usr/src/scripts

# WORKDIR /usr/src/scripts

# COPY  script.sh /usr/src/scripts/

# EXPOSE 8080

# CMD ["chmod", "+x", "/usr/src/scripts/script.sh"]
# #ENTRYPOINT ["/usr/src/scripts/script.sh"]
# CMD ["/bin/bash"]



RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
