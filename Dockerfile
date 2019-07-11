FROM maven:3-jdk-8 as builder
EXPOSE 8080

USER root
RUN apt-get update && mkdir /app
WORKDIR /app

# Keep maven dependencies in separate image layer
COPY pom.xml .
RUN mvn dependency:resolve dependency:resolve-plugins -B

# Copy in the src and build
COPY . .
RUN mvn clean package -B

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/myapp.jar /app
ENTRYPOINT ["java","-jar","myapp.jar"]
EXPOSE 8080