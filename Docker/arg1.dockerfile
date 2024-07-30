FROM ubuntu

RUN apt-get update && apt-get install -y \
&& rm -rf /var/lib/apt/lists/* 

ARG name=srii
ARG name2=srini

RUN echo ${name} and ${name2} > /tmp/test-home.txt

CMD [ "echo", "Hello '$name'"]