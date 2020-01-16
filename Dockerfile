FROM openjdk:8-jdk-alpine

COPY ./target/server-properties-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch server-properties-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","server-properties-0.0.1-SNAPSHOT.jar"]