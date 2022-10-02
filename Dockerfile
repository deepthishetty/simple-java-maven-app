FROM openjdk:8-jdk-alpine
# Environment Variable that defines the endpoint of sentiment-analysis python api.
EXPOSE 8080
WORKDIR /usr/app
CMD ["java", "-jar", "/usr/app/my-app-1.0-SNAPSHOT.jar"]
COPY target/my-app-1.0-SNAPSHOT.jar /usr/app