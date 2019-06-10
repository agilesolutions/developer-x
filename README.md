# Developer x
Which developer still needs CI/CD pipelines for doing his integration and delivery work?

[Docker multi-stage builds](https://docs.docker.com/develop/develop-images/multistage-build/) solves all your problems. 

* create a feature branch
* check out your branch
* apply your logic and changes
* run the multi-stage build
* share you image with the test community to be spinned of on a k8s cluster
* dome

## Running CI/CD with multi-stage Docker buildfiles

* Goto [Play with Docker ](https://labs.play-with-docker.com/)
* git clone https://github.com/agilesolutions/developer-x.git
* cd developer-x/cd-build
* docker build . -t agilesolutions/myapp
* docker login
* docker push