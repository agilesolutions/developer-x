# https://dzone.com/articles/a-dockerfile-for-maven-based-github-projects
FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/agilesolutions/developer-x.git
WORKDIR /app/developer-x
RUN git pull

FROM maven:3.5-jdk-8-alpine as package
WORKDIR /app
COPY --from=clone /app/developer-x /app
RUN mvn dependency:go-offline

RUN mvn package

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=package /app/target/myapp.jar /app
CMD ["java -jar myapp.jar"]