FROM lionelman45/rhel7
MAINTAINER team@wipro.com

RUN mkdir -p /usr/src/scripts

WORKDIR /usr/src/scripts

COPY  script.sh /usr/src/scripts/



RUN chmod +x /usr/src/scripts/script.sh
#EXPOSE 8080
#ENTRYPOINT ["/usr/src/scripts/script.sh"]
#CMD ["/bin/bash"]
