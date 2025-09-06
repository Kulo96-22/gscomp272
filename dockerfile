# Use official OpenJDK 21 image as base
FROM openjdk:21-jdk-slim

# Set working directory in the container
WORKDIR /app

# Copy the built jar file into the container
# Replace demo-0.0.1-SNAPSHOT.jar with your actual jar name
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
