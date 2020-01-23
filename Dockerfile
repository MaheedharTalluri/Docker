FROM lionelman45/rhel7
MAINTAINER team@wipro.com

RUN mkdir -p /usr/src/scripts

WORKDIR /usr/src/scripts

COPY  script.sh /usr/src/scripts/

EXPOSE 8080

CMD ["chmod", "+x", "/usr/src/scripts/script.sh"]
ENTRYPOINT ["/bin/bash", "-c",  "/usr/src/scripts/script.sh"]
#CMD [ "/usr/src/scripts/script.sh", "run"]
