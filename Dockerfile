FROM openjdk:8-jdk-alpine
EXPOSE 8888
RUN mvn clean package
COPY ./target/properties-server.jar /srv/properties-server.jar
COPY ./properties-repository/*.properties /srv/properties-repository/
WORKDIR /srv
RUN sh -c 'touch properties-server.jar'
ENTRYPOINT ["java","-jar","properties-server.jar"]