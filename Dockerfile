
# properties-server : Dockerfile
#
#
# Build stage
#
FROM maven:3.5.2-jdk-8-alpine AS build
COPY src /srv/src
COPY pom.xml /srv
RUN mvn -f /srv/pom.xml clean package -DskipTests=true

#
# Package stage
#
FROM openjdk:8-jdk-alpine

COPY --from=build /srv/target/properties-server.jar /srv/properties-server.jar
# if no properties repository on github add line below
#COPY  ./properties-repository/*.properties /srv/properties-repository/
WORKDIR /srv
RUN sh -c 'touch properties-server.jar'
EXPOSE 8888

ENTRYPOINT ["java","-jar","properties-server.jar"]

