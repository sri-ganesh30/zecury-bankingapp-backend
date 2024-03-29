FROM eclipse-temurin:20-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
#VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080