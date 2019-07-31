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


# docker network create --driver bridge isolated_network
# docker run -d --net=isolated_network --name bike-ui --env HTTP_PROXY="http://127.0.0.1:4200 ransn/bike-ui