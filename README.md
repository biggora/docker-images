## Introduction
This is a Dockerfiles to build a container images for gitlab-runner, nginx and nodejs, with the ability 
to pull source code from git. The container can also use environment variables to 
configure your web application using the templating detailed in the special features section.
Based on Ubuntu 14.04

## Git reposiory
The source files for this project can be found here: [Docker Images on Git](https://github.com/biggora/docker-images)


If you have any improvements please submit a pull request.

## Docker hub repository
The Docker hub build can be found here: [Docker Images on HUb](https://hub.docker.com/r/biggora/docker-images/)


## Installation
Pull the image from the docker index rather than downloading the git repo. 
This prevents you having to build the image on every docker host.

```
  docker pull biggora/docker-images:latest
```