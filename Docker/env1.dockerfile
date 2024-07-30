FROM ubuntu

ARG village=velmal
ENV name=srii

RUN echo Hi ${name} from ${village} > /tmp/newtest.txt

CMD [ "echo", "${name}" ]
CMD echo ${name}