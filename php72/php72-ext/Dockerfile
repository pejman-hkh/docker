FROM pejmanhkh/php72

WORKDIR /root

ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
ENV PHP_INI_SCAN_DIR /root/php-7.2.34/lib/ini/

#install extensions
RUN cd php-7.2.34/ && mkdir lib/ini
RUN cd php-7.2.34/ext/pdo && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
#RUN cd php-7.2.34/lib/ini && cat > pdo.ini && echo 'extension=pdo.so' > pdo.ini

RUN cd php-7.2.34/ext/mbstring && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
RUN cd php-7.2.34/lib/ini && cat > mbstring.ini && echo 'extension=mbstring.so' > mbstring.ini

RUN cd php-7.2.34/ext/ && cp -R mysqlnd/ ../include/php/ext/ && cd mysqli && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
#RUN cd php-7.2.34/lib/ini && cat > mysqli.ini && echo 'extension=mysqli.so' > mysqli.ini

RUN cd php-7.2.34/ext/gd && apk add libpng-dev && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
RUN cd php-7.2.34/lib/ini && cat > gd.ini && echo 'extension=gd.so' > gd.ini

RUN cd php-7.2.34/ext/zip && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
RUN cd php-7.2.34/lib/ini && cat > zip.ini && echo 'extension=zip.so' > zip.ini

RUN cd php-7.2.34/ext/curl && apk add curl && apk add curl-dev && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
RUN cd php-7.2.34/lib/ini && cat > curl.ini && echo 'extension=curl.so' > curl.ini

RUN cd php-7.2.34/ext/session && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
#RUN cd php-7.2.34/lib/ini && cat > session.ini && echo 'extension=session.so' > session.ini

RUN cd php-7.2.34/ext/opcache && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
#RUN cd php-7.2.34/lib/ini && cat > opcache.ini && echo 'extension=opcache.so' > opcache.ini

RUN cd php-7.2.34/ext/json && ../../bin/phpize && ./configure --with-php-config=/root/php-7.2.34/bin/php-config && make -j4 && make install
#RUN cd php-7.2.34/lib/ini && cat > json.ini && echo 'extension=json.so' > json.ini

#install another extensions