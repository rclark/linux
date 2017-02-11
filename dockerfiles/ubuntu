FROM ubuntu

ENV NVM_DIR="/usr/local/nvm"

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install git curl vim zip python-pip
RUN pip install awscli
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

RUN [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install 6

WORKDIR /usr/local/src
