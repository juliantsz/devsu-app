# Use an existing image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application jar file to the container
COPY target/*.jar /app/app.jar

# Run the jar file
CMD ["java", "-jar", "app.jar"]
