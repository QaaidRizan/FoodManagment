# Use an official lightweight Java 17 runtime
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy your JAR file into the image
COPY target/foodOrder-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 to allow traffic to the application
EXPOSE 8086

# Run the jar file when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
