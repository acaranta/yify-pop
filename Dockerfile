FROM ubuntu:14.04
MAINTAINER Arthur Caranta <arthur@caranta.com>

RUN apt-get update 
RUNapt-get install -y nodejs npm nodejs-legacy
RUN npm -g install geddy peerflix

ADD . /yify-pop
WORKDIR /yify-pop

RUN npm install
RUN npm install geddy child adm-zip getport moment opensrt_js

EXPOSE 4000 8889

ENV WEBPORT 4400
ENV STREAMPORT 8889
ENV ISDOCKER true

CMD ./docker-run.sh
