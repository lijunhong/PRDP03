FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY build/libs/helloworld-0.0.1-SNAPSHOT.jar /app/
EXPOSE 1111
CMD ["java", "-jar", "-Dspring.profiles.active=${profile}", "helloworld-0.0.1-SNAPSHOT.jar"]