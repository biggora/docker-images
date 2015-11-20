############################################################
# Dockerfile to build container for Tests
# Based on Ubuntu 14.04
# include GIT NODEJS NGINX WGET NANO
############################################################

# Set the base image to Ubuntu
FROM gitlab/gitlab-runner

# File Author / Maintainer
MAINTAINER Alexey Gordeyev <aleksej@gordejev.lv>

# Update the repository sources list
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get autoclean -y

################## BEGIN INSTALLATION ######################
RUN apt-get install -y git nodejs-legacy nodejs-dev npm nginx-extras
CMD git config --global http.sslverify false
CMD npm install --save -g npm bower gulp jshint mocha istanbul should
##################### INSTALLATION END #####################

# Expose the default port
EXPOSE 80

# Default port to execute the entrypoint (MongoDB)
# CMD ["--port 27017"]

WORKDIR /usr/local/
