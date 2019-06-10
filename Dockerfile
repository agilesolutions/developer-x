FROM maven:3.5-jdk-8-alpine as package
WORKDIR /app
COPY . .
RUN mvn dependency:go-offline

RUN mvn package

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=package /app/target/myapp.jar /app
CMD ["java -jar myapp.jar"]