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

* [Learn Spring with Baeldung](https://www.baeldung.com/category/spring/)
* [Spring Autowire](https://www.baeldung.com/spring-autowire)
* [Spring Core Annotations](https://www.baeldung.com/spring-core-annotations)
* [Spring Bean Scopes](https://www.baeldung.com/spring-bean-scopes)
* [Spring Profiles](https://www.baeldung.com/spring-profiles)
* [Spring component stereotypes](https://www.baeldung.com/spring-component-repository-service)
* [Configuration with Spring Boot](https://www.baeldung.com/spring-boot-custom-auto-configuration)
* [AutoConfiguration again](https://www.springboottutorial.com/spring-boot-auto-configuration)
* [And finally this on autoconfiguration](https://aboullaite.me/the-magic-behind-the-magic-spring-boot-autoconfiguration/)
* [component scanning](https://www.springboottutorial.com/spring-boot-and-component-scan)
* [JavaConfig](https://docs.spring.io/spring-javaconfig/docs/1.0.0.M4/reference/html/ch02s02.html)
* [@ConfigurationProperties](https://www.baeldung.com/configuration-properties-in-spring-boot)
* [Spring and SPNEGO](https://www.baeldung.com/spring-security-kerberos)

## Using multiple WebSecurityConfigurerAdapter with different AuthenticationProviders

* [Using multiple WebSecurityConfigurerAdapter with different AuthenticationProviders (basic auth for API and LDAP for web app)](https://stackoverflow.com/questions/40258583/using-multiple-websecurityconfigureradapter-with-different-authenticationprovide)
* [Spring Security Architecture](https://spring.io/guides/topicals/spring-security-architecture/)
* [Java Config](https://docs.spring.io/spring-security/site/docs/current/reference/html/jc.html)
* [Multiple Entry Points in Spring ](https://www.baeldung.com/spring-security-multiple-entry-points)
* [Spring Security and Multiple Filter Chains](http://blog.florian-hopf.de/2017/08/spring-security.html)
* [Spring Security for a REST API](https://www.baeldung.com/securing-a-restful-web-service-with-spring-security)

## Spring Boot and JWT

* [Microservices with Spring Boot — Intro to Microservices 1](https://medium.com/omarelgabrys-blog/microservices-with-spring-boot-intro-to-microservices-part-1-c0d24cd422c3)
* [Microservices with Spring Boot — Intro to Microservices 2](https://medium.com/omarelgabrys-blog/microservices-with-spring-boot-creating-our-microserivces-gateway-part-2-31f8aa6b215b)
* [Microservices with Spring Boot — Intro to Microservices 3](https://medium.com/omarelgabrys-blog/microservices-with-spring-boot-authentication-with-jwt-part-3-fafc9d7187e8)
* [Microservices with Spring Boot — Intro to Microservices 4](https://medium.com/@arjunac009/spring-boot-microservice-with-centralized-authentication-zuul-eureka-jwt-5719e05fde29)
* [Using JWT with Spring Security OAuth](https://www.baeldung.com/spring-security-oauth-jwt)
* [Spring Boot Security + JSON Web Token](https://dzone.com/articles/spring-boot-security-json-web-tokenjwt-hello-world)

## Opentracing and Spring Boot

* [open tracing io](https://opentracing.io/)
* [jager io](https://www.jaegertracing.io/)
* [thenewstack on opentracing](https://thenewstack.io/opentracing-open-standard-distributed-tracing/)
* [OpenTracing Spring Boot Instrumentation](https://dzone.com/articles/opentracing-spring-boot-instrumentation)
* [OpenTracing: An Open Standard for Distributed Tracing](https://dzone.com/articles/opentracing-an-open-standard-for-distributed-traci)
* [OpenTracing Has Caught the Attention of the APM World](https://dzone.com/articles/opentracing-has-caught-the-attention-of-the-apm-wo)
* [Using OpenTracing to Collect Application Metrics in Kubernetes](https://dzone.com/articles/using-opentracing-to-collect-application-metrics-i-1)

