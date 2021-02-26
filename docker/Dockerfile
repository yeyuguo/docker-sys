# set the base image to Debian
# https://hub.docker.com/_/debian/
FROM debian:latest

# replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# update the repository sources list
# and install dependencies
RUN apt-get update \
    && apt-get install -y wget \
    && apt-get -y autoclean


RUN mkdir -p /script/script
COPY ./* /script/docker/
RUN chmod 755 -R /script/docker


# install nvm & node 
RUN /script/docker/create-nvm-node.sh 
# RUN /script/docker/create-npm.sh

# install npm & cnpm & yarn
# RUN /script/docker/create-npm.sh

# application folder
RUN mkdir -p /app \
		&& chmod -R 755 /app

CMD ["cd", "/app"]


