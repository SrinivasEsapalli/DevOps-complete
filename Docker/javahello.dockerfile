FROM openjdk:11
COPY ./Test.java /usr/src/

WORKDIR /usr/src/

Run javac Test.java

CMD ["java", "Test"]

