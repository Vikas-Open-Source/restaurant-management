FROM openjdk:21-jdk-slim

EXPOSE 8080

WORKDIR /app

ARG JAR_FILE=/build/libs/restaurant-management-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} /app/restaurant-management.jar

ENTRYPOINT ["java", "-jar", "/restaurant-management.jar"]
