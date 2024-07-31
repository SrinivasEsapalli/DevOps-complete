# Taking already exisisted image compiler
FROM openjdk:11

# Here we are copying Test.java program to image usr/src folder
COPY ./Test.java /usr/src/

#Telling the compiler about the present working directory..
WORKDIR /usr/src/

#compiling java file and storing it in the test.java
Run javac Test.java

#Running test.java
CMD ["java", "Test"]