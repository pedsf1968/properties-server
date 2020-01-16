FROM openjdk:8-jdk-alpine

COPY ./target/server-properties-0.0.1-SNAPSHOT.jar /srv/pserver.jar
COPY ./*.properties /data/properties-repo/
VOLUME /srv
WORKDIR /srv
RUN sh -c 'touch pserver.jar'
ENTRYPOINT ["java","-jar","pserver.jar"]