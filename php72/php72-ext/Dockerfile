FROM pejmanhkh/php72

WORKDIR /root

ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808

#install extensions
RUN cd php-7.2.34/ext/pdo && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
RUN cd php-7.2.34/ext/mbstring && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
#install another extensions