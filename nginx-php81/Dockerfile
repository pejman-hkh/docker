FROM alpine

# set a directory for the app
WORKDIR /root

# copy all the files to the container
COPY wrapper.sh wrapper.sh

# install dependencies
ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
RUN apk update
RUN apk add bash
RUN apk add nginx
RUN apk add php81
RUN apk add php81-common
RUN apk add php81-pdo
RUN apk add php81-mbstring
RUN apk add php81-gettext
RUN apk add php81-iconv
RUN apk add php81-zip
RUN apk add php81-curl
RUN apk add php81-dom
RUN apk add php81-session
RUN apk add php81-mysqli
RUN apk add php81-fpm
RUN apk add bash

# define the port number the container should expose
EXPOSE 80 443 9000

# run the command
CMD ["bash", "wrapper.sh"]