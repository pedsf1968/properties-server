FROM openjdk:8-jdk-alpine
EXPOSE 8888

COPY ./target/properties-server.jar /srv/properties-server.jar
COPY ./properties-repository/*.properties /data/properties-repository/
WORKDIR /srv
RUN sh -c 'touch properties-server.jar'
ENTRYPOINT ["java","-jar","properties-server.jar"]