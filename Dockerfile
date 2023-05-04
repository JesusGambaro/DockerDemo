FROM alpine:latest AS build
RUN apt-get update
RUN apt-get install openjdk-17-jdk -y
COPY . .
RUN ./gradlew bootJar --no-daemon

FROM openjdk:17-jdk-alpine
EXPOSE 8080
COPY ./build/libs/*.jar app.jar
#COPY ./build/libs/demo-1.jar ./app.jar
ENTRYPOINT ["java","-jar","/app.jar"]