# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
COPY target/library-management-system.jar /app/library-management-system.jar

# Expose the port that the application runs on
EXPOSE 5000

# Run the application
ENTRYPOINT ["java", "-jar", "library-management-system.jar"]
