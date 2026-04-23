#----------------------------------
# Stage 1 → Build Stage
#----------------------------------

# Use Maven + OpenJDK image
# Purpose: Provides tools to compile and build Java application
FROM maven:3.8.3-openjdk-17 as builder 

# Maintainer info (optional, mostly deprecated but okay for understanding)
# Purpose: Identifies who created this Dockerfile
MAINTAINER Madhup Pandey<madhuppandey2908@gmail.com>

# Add custom label to image
# Purpose: Helps identify/filter image (useful in large systems)
LABEL app=bankapp

# Set working directory inside container
# Purpose: All commands will run inside /src
WORKDIR /src

# Copy all project files into container
# Purpose: Includes pom.xml, src/, and all code needed for build
COPY . /src

# Build the application using Maven
# Purpose:
# - clean → removes old build files
# - install → compiles code and creates JAR
# - -DskipTests=true → skips test execution to save time
RUN mvn clean install -DskipTests=true



#--------------------------------------
# Stage 2 → Runtime Stage
#--------------------------------------

# Use lightweight Java image (for running app only)
# Purpose: Smaller image size, no Maven required
FROM eclipse-temurin:17-jdk-alpine as deployer

# Copy JAR file from builder stage
# Purpose:
# - Takes compiled JAR from Stage 1
# - Renames it to bankapp.jar for consistency
COPY --from=builder /src/target/*.jar /src/target/bankapp.jar

# Expose port 8080
# Purpose: Inform Docker that app runs on this port
EXPOSE 8080

# Start the application
# Purpose: Runs Spring Boot app when container starts
ENTRYPOINT ["java", "-jar", "/src/target/bankapp.jar"]