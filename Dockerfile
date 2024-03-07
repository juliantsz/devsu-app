# Use an existing ARM64 base image
FROM adoptopenjdk/openjdk17:jdk-17.0.2_12-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application jar file to the container
COPY target/app.jar /app/app.jar

# Run the jar file
CMD ["java", "-jar", "app.jar"]
