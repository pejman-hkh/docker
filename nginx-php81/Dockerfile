FROM alpine

# set a directory for the app
WORKDIR /root

# copy all the files to the container
COPY wrapper.sh wrapper.sh

# install dependencies
ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
RUN apk update;\
apk add bash nginx php81 php81-common php81-pdo php81-mbstring php81-gettext php81-iconv php81-zip php81-curl php81-dom php81-session php81-mysqli php81-fpm bash

# define the port number the container should expose
EXPOSE 80 443 9000

# run the command
CMD ["bash", "wrapper.sh"]