FROM maven:latest AS build
COPY . /usr/app 
WORKDIR /usr/app 
RUN mvn package

FROM openjdk:8-jdk-alpine
WORKDIR /
CMD ["java", "-jar", "/my-app-1.0-SNAPSHOT.jar"]
COPY --from=build /usr/app/target/my-app-1.0-SNAPSHOT.jar /