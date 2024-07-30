#gcc is the base comiler to run c program
FROM gcc
#copy c code to gcc compiler /usr/src/ folder
COPY ./Helloworld.c /usr/src/
WORKDIR /usr/src/

#compile 
RUN gcc Helloworld.c -o appcprog

#appprog is the compiled file which we are runnig 
#Run
CMD [ "./appcprog"]