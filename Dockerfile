############################################################
# Dockerfile to build container for Tests
# Based on Ubuntu 14.04
# include GIT NODEJS
############################################################

# Set the base image to Ubuntu
FROM ubuntu:14.04

# File Author / Maintainer
MAINTAINER Alexey Gordeyev <aleksej@gordejev.lv>

# Update the repository sources list
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get autoclean -y

################## BEGIN INSTALLATION ######################

RUN apt-get install -y git nodejs-legacy nodejs-dev npm ntp mc
RUN update-ca-certificates
RUN git config --global http.sslverify false
RUN npm install --save -g npm bower gulp jshint mocha istanbul should

##################### INSTALLATION END #####################

RUN apt-get autoremove -y
RUN apt-get autoclean -y
RUN apt-get clean

# Expose the default port
EXPOSE 3000

# Default port to execute the entrypoint (MongoDB)
# CMD ["--port 27017"]

WORKDIR /usr/local/
