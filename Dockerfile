FROM openjdk:8-jdk-alpine

MAINTAINER Ranganath

ENV BIKE_ENV = production

ENV PORT = 8081

COPY ./target/bike-0.0.1-SNAPSHOT.jar .

COPY bike.db .

WORKDIR .

RUN sh -c 'touch bike-0.0.1-SNAPSHOT.jar'	

EXPOSE 8081

ENTRYPOINT ["java","-jar","bike-0.0.1-SNAPSHOT.jar"]

