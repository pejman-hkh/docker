FROM alpine

# set a directory for the app
WORKDIR /root

# copy all the files to the container
#COPY wrapper.sh wrapper.sh

# install dependencies
RUN wget https://www.php.net/distributions/php-7.2.34.tar.gz
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
RUN apk add gettext-dev
RUN tar -xvzf php-7.2.34.tar.gz
RUN cd php-7.2.34 && bash configure --prefix=$(pwd) --enable-fpm && make -j4 && make install

#install extensions
#RUN cd php-7.2.34/ext/pdo && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
#RUN cd php-7.2.34/ext/mbstring && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
