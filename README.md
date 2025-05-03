# Sample Spring Boot API

This project is a simple Spring Boot REST API that greets users by name. It demonstrates how to build, run, test, and generate code coverage reports for a Spring Boot application using Gradle.

---

## Features

- **Greeting API**:  
  `GET /greet?name=YourName`  
  Returns: `Hello YourName`

- **Unit Testing**:  
  Includes a JUnit test for the greeting endpoint.

- **Code Coverage**:  
  Jacoco is configured to generate test coverage reports.

- **Docker Support**:  
  Dockerfile included for containerized deployment.

---

## Prerequisites

- Java 17+
- Gradle (or use the included `gradlew` wrapper)
- Docker (optional, for containerization)

---

## Getting Started

### 1. Build the Application

```sh
./gradlew build
```

This will compile the code and package it into a JAR file in `build/libs/`.

---

### 2. Run the Application

```sh
./gradlew bootRun
```

The application will start on [http://localhost:8080](http://localhost:8080).

---

### 3. Access the API

Test the greeting endpoint in your browser or with curl:

```
http://localhost:8080/greet?name=YourName
```

Replace `YourName` with any name you want.

---

### 4. Run Unit Tests

```sh
./gradlew test
```

---

### 5. Generate and View Test Coverage Report

```sh
./gradlew test jacocoTestReport
```

Open the HTML report at:

```
build/reports/jacoco/test/html/index.html
```

---

### 6. Build and Run with Docker

**Build the Docker image:**

```sh
docker build -t sample-api .
```

**Run the Docker container:**

```sh
docker run -p 8080:8080 sample-api
```

The API will be available at [http://localhost:8080](http://localhost:8080).

---

## Project Structure

```
src/
  main/
    java/com/example/sampleapi/
      GreetingController.java
      SampleApiApplication.java
  test/
    java/com/example/sampleapi/
      GreetingControllerTest.java
      SampleApiApplicationTests.java
build.gradle
Dockerfile
```

---

## Reference Documentation

- [Official Gradle documentation](https://docs.gradle.org)
- [Spring Boot Gradle Plugin Reference Guide](https://docs.spring.io/spring-boot/3.4.5/gradle-plugin)
- [Spring Web](https://docs.spring.io/spring-boot/3.4.5/reference/web/servlet.html)
- [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
- [Jacoco Code Coverage](https://www.jacoco.org/jacoco/)

---

## License

This project is for educational/demo purposes.
