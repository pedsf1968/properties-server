FROM openjdk:8-jdk-alpine

COPY ./target/server-properties-0.0.1-SNAPSHOT.jar /tmp/
VOLUME /tmp
WORKDIR /tmp
RUN sh -c 'touch pserver.jar'
ENTRYPOINT ["java","-jar","pserver.jar"]