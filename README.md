## spring-boot-Angular
By: DanBunker, bike web application by using spring boot and angular. This is a reference implementation to know integration between spring boot and angular.

## Pre Requisites
STS, JAVA,
SQLite (File based, Relational Data Base),
NodeJs, Yarn,
Angular CLI

## Run this command to install Angular CLI
npm install -g @angular/cli


## Docker commands


# Build docker image
docker build -t &lt;image-name>:&lt;tag> .  
example: docker build -t ransn/bike-app:0.0.1 .

# Run image
docker run -p &lt;host-port>:&lt;container-port> --rm &lt;image-name>:&lt;tag>  
example: docker run -p 8081:8081 --rm ransn/bike-app:0.0.1

# Two ways to make containers communicate each other

	1. Linking containers by name
	2. Container networks
	
# Linking containers by name
container1: docker run -d --name &lt;anyName> &lt;image-name>  
example: docker run -d -p 4201:4200 --name ransnBikeUi --rm ransn/bike-ui  
container2: docker run -d -p 8081:8081 --link ransnBikeUi:ransn/bike-ui ransn/bike-app  

# Create container network
docker network create --driver bridge &lt;network-name>  
example: docker network create --driver bridge isolated_network

# Run container inside container network created in early step 
docker run -d --net=&lt;network-name> --name &lt;aliasName> -p &lt;host-port>:&lt;container-port> &lt;image-name>:&lt;tag>  
example: docker run -d --net=isolated_network --name bike-app -p 8081:8081 ransn/bike-app:0.0.1

# docker-compose
navigate to root directory of project and run  
ToBuild: docker-compose build  
ToUpServices: docker-compose up  
ToDownServices: docker-compose down  
