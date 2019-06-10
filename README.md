# Developer x

## Setting up

* log on to [Play with Docker](https://labs.play-with-docker.com/)
* git clone https://github.com/agilesolutions/developer-x
* cd developer-x

## Run jenkins in container and bind host docker

* create directory /jenkins
* docker run -d --name jenkins --user root -p 8080:8080 -v /jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkinsci/blueocean
* docker logs -f jenkins
* docker exec -ti jenkins bash
* docker ps -a
* browse to http://localhost:8080 and wait until the Unlock Jenkins page appears.
* get password from /jenkins/secrets/initialAdminPassword