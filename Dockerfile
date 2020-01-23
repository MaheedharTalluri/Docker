FROM centos:latest
MAINTAINER team@wipro.com

RUN mkdir -p /usr/src/scripts

WORKDIR /usr/src/scripts

COPY  script.sh /usr/src/scripts/

EXPOSE 8080

CMD ["chmod", "+x", "/usr/src/scripts/script.sh"]
#ENTRYPOINT ["/bin/bash", "-c",  "/usr/src/scripts/script.sh"]

RUN yum install httpd -y

COPY index.html /var/www/html

EXPOSE 80

CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]

#CMD [ "/usr/src/scripts/script.sh", "run"]
