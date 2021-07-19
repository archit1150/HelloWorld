FROM openjdk:8-jdk-alpine
MAINTAINER Archit Bansal
COPY target/helloworld-0.0.1-SNAPSHOT.jar helloworld-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/helloworld-0.0.1-SNAPSHOT.jar"]
