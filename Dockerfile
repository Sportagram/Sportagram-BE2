# Build stage
FROM gradle:7.6.0-jdk11 AS build

# Set the working directory
WORKDIR /app

# Copy build files
COPY build.gradle .
COPY settings.gradle .
COPY src ./src

# Build the application
RUN gradle build -x test

# Run stage
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the built jar file from the build stage
COPY --from=build /app/build/libs/*.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
