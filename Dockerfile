# FROM centos:latest
# MAINTAINER team@wipro.com

# # RUN mkdir -p /usr/src/scripts

# # WORKDIR /usr/src/scripts

# # COPY  script.sh /usr/src/scripts/

# # EXPOSE 8080

# # CMD ["chmod", "+x", "/usr/src/scripts/script.sh"]
# # #
# ENTRYPOINT ["/bin/bash", "-c",  "/usr/src/scripts/script.sh"]

# RUN yum install httpd -y

# COPY index.html /var/www/html

# EXPOSE 80

# CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]

# #CMD [ "/usr/src/scripts/script.sh", "run"]

FROM centos:7
MAINTAINER The CentOS Project <cloud-ops@centos.org>
LABEL Vendor="CentOS" \
      License=GPLv2 \
      Version=2.4.6-40


RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
