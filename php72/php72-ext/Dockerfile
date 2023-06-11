FROM pejmanhkh/php72

WORKDIR /root

ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
ENV PHP_INI_SCAN_DIR /usr/local/php72/lib/php.conf.d/

#install extensions
RUN cd /usr/local/php72/lib/ && mkdir php.conf.d
RUN cd php-7.2.34/ext/pdo && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
#RUN cd /usr/local/php72/lib/php.conf.d && cat > pdo.ini && echo 'extension=pdo.so' > pdo.ini

RUN cd php-7.2.34/ext/mbstring && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > mbstring.ini && echo 'extension=mbstring.so' > mbstring.ini

RUN cd php-7.2.34/ext/ && cp -R mysqlnd/ /usr/local/php72/include/php/ext/ && cd mysqli && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
#RUN cd /usr/local/php72/lib/php.conf.d && cat > mysqli.ini && echo 'extension=mysqli.so' > mysqli.ini

RUN cd php-7.2.34/ext/gd && apk add libpng-dev && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > gd.ini && echo 'extension=gd.so' > gd.ini

RUN cd php-7.2.34/ext/zip && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > zip.ini && echo 'extension=zip.so' > zip.ini

RUN cd php-7.2.34/ext/curl && apk add curl && apk add curl-dev && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > curl.ini && echo 'extension=curl.so' > curl.ini

RUN cd php-7.2.34/ext/session && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
#RUN cd /usr/local/php72/lib/php.conf.d && cat > session.ini && echo 'extension=session.so' > session.ini

RUN cd php-7.2.34/ext/opcache && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
#RUN cd /usr/local/php72/lib/php.conf.d && cat > opcache.ini && echo 'extension=opcache.so' > opcache.ini

RUN cd php-7.2.34/ext/json && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
#RUN cd /usr/local/php72/lib/php.conf.d && cat > json.ini && echo 'extension=json.so' > json.ini

#install another extensions