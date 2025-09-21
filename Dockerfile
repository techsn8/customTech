# Use a suitable base image (e.g., OpenJDK for Java applications)
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven wrapper scripts and the pom.xml
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Make the Maven wrapper script executable
RUN chmod +x mvnw

# Copy the rest of your application source code
COPY src src

# Build the application using the Maven wrapper
RUN ./mvnw package

# Expose the port your application listens on (if applicable)
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "target/customTech.jar"]
