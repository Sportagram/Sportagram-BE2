# Build stage
FROM maven:3.8.6-openjdk-11 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Run stage
FROM openjdk:11-jre-slim

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

# 환경 변수 설정
ENV SPRING_DATASOURCE_URL=jdbc:postgresql://db:5432/your_db_name
ENV SPRING_DATASOURCE_USERNAME=your_db_user
ENV SPRING_DATASOURCE_PASSWORD=your_db_password

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
