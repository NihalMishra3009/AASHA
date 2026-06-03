FROM eclipse-temurin:21-jdk-alpine AS build

WORKDIR /app

COPY backend/pom.xml backend/mvnw ./
COPY backend/.mvn .mvn
COPY backend/src src

RUN chmod +x mvnw
RUN ./mvnw -DskipTests clean package

FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY --from=build /app/target/asha-backend-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/app.jar"]
