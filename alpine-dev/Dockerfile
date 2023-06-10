FROM alpine

# set a directory for the app
WORKDIR /root

# copy all the files to the container
#COPY wrapper.sh wrapper.sh

# install dependencies
ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
RUN apk update
RUN apk add bash
RUN apk add gcc
RUN apk add g++
RUN apk add libxml2
RUN apk add libxml2-dev
RUN apk add sqlite
RUN apk add sqlite-dev
RUN apk add make
RUN apk add cmake
RUN apk add autoconf