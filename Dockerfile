FROM lionelman45/rhel7
MAINTAINER team@wipro.com

RUN mkdir -p /usr/src/scripts

WORKDIR /usr/src/scripts

COPY  script.sh /usr/src/scripts/

EXPOSE 8080

RUN chmod +x /usr/src/scripts/script.sh
ENTRYPOINT ["/bin/bash"]
