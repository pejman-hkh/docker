FROM alpine

# set a directory for the app
WORKDIR /root

# copy all the files to the container
#COPY wrapper.sh wrapper.sh

# install dependencies
ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
RUN apk update;\
apk add --virtual .build-deps bash gcc g++ make cmake autoconf;
