# Stage 1: Build the application
FROM gradle:8.5.0-jdk17 AS build
COPY --chown=gradle:gradle . /home/gradle/project
WORKDIR /home/gradle/project
RUN gradle build -x test --no-daemon

# Stage 2: Run the application
FROM eclipse-temurin:17-jre-alpine
VOLUME /tmp
COPY --from=build /home/gradle/project/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"] 