from ubuntu

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install git curl vim
RUN curl https://s3.amazonaws.com/mapbox/apps/install-node/v2.0.0/run | NV=4.4.2 NP=linux-x64 OD=/usr/local sh

WORKDIR /
