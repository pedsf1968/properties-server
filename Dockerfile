FROM openjdk:8-jdk-alpine

EXPOSE 8888

COPY ./target/server-properties-0.0.1-SNAPSHOT.jar /srv/properties-server.jar
#COPY ./*.properties /data/properties-repo/

WORKDIR /srv
RUN sh -c 'touch properties-server.jar'
ENTRYPOINT ["java","-jar","properties-server.jar"]