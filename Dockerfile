FROM lionelman45/rhel7
MAINTAINER team@wipro.com

RUN mkdir -p /usr/src/scripts

WORKDIR /usr/src/scripts

COPY  script.sh /usr/src/scripts/

EXPOSE 8080

CMD ["chmod", "+x", "/usr/src/scripts/script.sh"]

#ENTRYPOINT ["/usr/src/scripts/script.sh"]
#CMD ["/bin/bash"]
