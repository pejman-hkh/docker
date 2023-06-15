FROM alpine

# set a directory for the app
WORKDIR /root

# copy all the files to the container
COPY run.sh run.sh

# install dependencies
ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
RUN apk update ;\
apk add bash mariadb mariadb-client mariadb-server-utils pwgen

# define the port number the container should expose
EXPOSE 3306

# run the command
CMD ["bash", "run.sh"]