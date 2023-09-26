# Use an official OpenJDK image as the base image
FROM openjdk:8

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files to the container
COPY pom.xml .
COPY src ./src

# Run the Maven package command to build the project
RUN ["mvn", "package"]

# Set the entry point to run your Selenium tests
CMD ["mvn", "test"]
