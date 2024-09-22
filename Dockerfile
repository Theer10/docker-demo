# Use the official Eclipse Temurin 17 JDK image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Add a temporary volume for any file storage needs
VOLUME /tmp

# Copy the JAR file from the target directory into the container
# Ensure the target directory exists and copy a specific JAR file
COPY target/*.jar /app/app.jar

# Expose a port (if your Java application needs it, e.g., Spring Boot usually runs on 8080)
 EXPOSE 8081

# Run the Java application when the container starts
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
