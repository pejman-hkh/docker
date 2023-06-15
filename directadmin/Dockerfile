FROM alpine

# set a directory for the app
WORKDIR /root

# copy all the files to the container
COPY wrapper.sh wrapper.sh
COPY mod_aclr2.so /usr/lib/apache2/mod_aclr2.so

# install dependencies
ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
RUN adduser webapps -S; \
addgroup webapps -S; \
apk update; \
apk add bash nginx apache2 apache2-utils apache2-proxy apache2-webdav apache2-http2 apache2-ssl; \
cd /etc/ && ln -s apache2 httpd ;\
cd /usr/lib/ && ln -s apache2 apache ;

# define the port number the container should expose
EXPOSE 80 443

# run the command
CMD ["bash", "wrapper.sh"]