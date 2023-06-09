FROM alpine

# set a directory for the app
WORKDIR /root

# copy all the files to the container
COPY wrapper.sh wrapper.sh
COPY mod_aclr2.so /usr/lib/apache2/mod_aclr2.so

# install dependencies
ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
RUN adduser webapps -S
RUN addgroup webapps -S
RUN apk update
RUN apk add bash
RUN apk add nginx
RUN apk add apache2
RUN apk add apache2-utils
RUN apk add apache2-proxy
RUN apk add apache2-webdav
RUN apk add apache2-http2
RUN apk add apache2-ssl

RUN cd /etc/ && ln -s apache2 httpd
RUN cd /usr/lib/ && ln -s apache2 apache


# define the port number the container should expose
EXPOSE 80 443

# run the command
CMD ["bash", "wrapper.sh"]