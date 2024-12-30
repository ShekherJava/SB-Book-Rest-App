# Use a base image as jdk 17
FROM openjdk:17-jdk-slim

# Copy the Spring Boot jar file into the container
COPY target/SB-Book-Rest-App-0.0.1-SNAPSHOT.jar /usr/app/

# Set the working directory inside the container 
WORKDIR /usr/app/

# Expose the port the app runs on
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT [ "java", "-jar", "SB-Book-Rest-App-0.0.1-SNAPSHOT.jar" ]
