FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/* 
COPY ./scriptvararg.sh /

ARG arg1=5
ARG arg2=10
ENV env1=15
ENV env2=20

#giving executable permissions
RUN chmod +x /scriptvararg.sh


ENTRYPOINT ["/scriptvararg.sh"]
