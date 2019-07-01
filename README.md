# Developer x
Which developer still needs CI/CD pipelines for doing his integration and delivery work?

[Docker multi-stage builds](https://docs.docker.com/develop/develop-images/multistage-build/) solves all your problems. 

* create a feature branch
* check out your branch
* apply your logic and changes
* run the multi-stage build
* tag and push your new image to the central registry
* share you image with the test community to be spinned of on a k8s cluster
* dome

## Running CI/CD with multi-stage Docker buildfiles

* Goto [Play with Docker ](https://labs.play-with-docker.com/)
* git clone https://github.com/agilesolutions/developer-x.git
* cd developer-x
* docker build -t agilesolutions/myapp .
* docker login
* docker push
* docker build --target package -t agilesolutions/myapp . (if you want stop at a specific stage...)
* docker image prune (clean up all dangling images)

## Reading more on DZone

* [A Dockerfile for Maven-Based GitHub Projects](https://dzone.com/articles/a-dockerfile-for-maven-based-github-projects)
* [Multi-Stage Builds With Docker](https://dzone.com/articles/multi-stage-builds-with-docker)
* [Specific for development purposes](https://dev.to/brpaz/using-docker-multi-stage-builds-during-development-35bc)
* [Building complete pipelines including sonar scans](https://medium.com/capital-one-tech/multi-stage-builds-and-dockerfile-b5866d9e2f84)

## customizing Jenkins

* Goto [Play with Docker ](https://labs.play-with-docker.com/)
* docker run -d --name jenkins --user root -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock agilesolutions/jenkins
* docker logs -f jenkins
* docker exec -ti jenkins bash

## Kubernetes plugin Jenkins

# [Kubernetes plugin](https://github.com/jenkinsci/kubernetes-plugin)

## The best reads on SpringBoot essentials

* [Spring Autowire](https://www.baeldung.com/spring-autowire)
* [Spring Core Annotations](https://www.baeldung.com/spring-core-annotations)
* [Spring Bean Scopes](https://www.baeldung.com/spring-bean-scopes)
* [Configuration with Spring Boot](https://www.baeldung.com/spring-boot-custom-auto-configuration)
* [AutoConfiguration again](https://www.springboottutorial.com/spring-boot-auto-configuration)
* [And finally this on autoconfiguration](https://aboullaite.me/the-magic-behind-the-magic-spring-boot-autoconfiguration/)
