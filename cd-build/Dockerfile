#
# Build stage to for building the Jar
#
FROM maven:3-alpine as builder
MAINTAINER robert.rong@agile-solutions.com

WORKDIR  /dev

RUN git clone https://github.com/agilesolutions/developer-x.git

RUN cd developer-x

RUN mvn clean install

#
# Build stage with the runtime jar and resources
#
FROM openjdk:8-jre-slim

# Copy from the previous stage
COPY --from=builder /opt/server/developer-x/target/*.jar /tmp/

# Just rename the built version
RUN mkdir /runtime && \
    find /tmp -name "*.jar" ! -name "*sources*" -exec cp -t /runtime {} + && \
    mv /runtime/*.jar /runtime/server.jar && \
    rm -f /tmp/*.jar

# Port used by the server
EXPOSE 8888

# This is to support HTTPS calls to
RUN apt-get update && apt-get install -y curl ca-certificates
RUN update-ca-certificates && \
   mkdir -p /usr/share/ssl/certs && \
   chmod 755 /usr/share/ssl/certs

# What to execute on docker run
ENTRYPOINT sh -c "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom \
           $JAVA_PARAMS -jar /runtime/server.jar --server.port=8888 $SPRING_BOOT_APP_OPTS"