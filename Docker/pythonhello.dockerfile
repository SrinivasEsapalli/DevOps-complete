FROM python

COPY ./helloworld.py /var

#WORKDIR /var

CMD [ "python", "/var/helloworld.py" ]