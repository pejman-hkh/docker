FROM pejmanhkh/php-dev AS needs-squashing
ENV PHP_INI_DIR /usr/local/php72/lib/
# set a directory for the app
WORKDIR /root
COPY php-7.2.34.tar.gz /root/src/
# install dependencies
RUN mkdir src;\
mkdir -p $PHP_INI_DIR/php.conf.d; \
cd src;\
tar -xvzf php-7.2.34.tar.gz;

RUN cd src/php-7.2.34;\
./configure --prefix=/usr/local/php72 --disable-all --disable-cgi --disable-phpdbg \
--enable-fpm \
--with-config-file-path="$PHP_INI_DIR" \
--with-config-file-scan-dir="$PHP_INI_DIR/php.conf.d";\
make -j4;\
make install;

#install extensions
#RUN cd /usr/local/php72/lib/ && mkdir php.conf.d
RUN cd src/php-7.2.34/ext/pdo && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > pdo.ini && echo 'extension=pdo.so' > pdo.ini

RUN cd src/php-7.2.34/ext/mbstring && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > mbstring.ini && echo 'extension=mbstring.so' > mbstring.ini

RUN cd src/php-7.2.34/ext/ && cp -R mysqlnd/ /usr/local/php72/include/php/ext/ && cd mysqli && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
#RUN cd /usr/local/php72/lib/php.conf.d && cat > mysqli.ini && echo 'extension=mysqli.so' > mysqli.ini

RUN cd src/php-7.2.34/ext/gd && apk add libpng-dev && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > gd.ini && echo 'extension=gd.so' > gd.ini

RUN cd src/php-7.2.34/ext/zip && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > zip.ini && echo 'extension=zip.so' > zip.ini

RUN cd src/php-7.2.34/ext/curl && apk add curl && apk add curl-dev && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > curl.ini && echo 'extension=curl.so' > curl.ini

RUN cd src/php-7.2.34/ext/session && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > session.ini && echo 'extension=session.so' > session.ini

RUN cd src/php-7.2.34/ext/opcache && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
#RUN cd /usr/local/php72/lib/php.conf.d && cat > opcache.ini && echo 'extension=opcache.so' > opcache.ini

RUN cd src/php-7.2.34/ext/json && /usr/local/php72/bin/phpize && ./configure --with-php-config=/usr/local/php72/bin/php-config && make -j4 && make install
RUN cd /usr/local/php72/lib/php.conf.d && cat > json.ini && echo 'extension=json.so' > json.ini

RUN cd src;\
rm -rf php-7.2.34;\
rm -rf php-7.2.34.tar.gz;

RUN apk del --no-network .build-deps;

FROM scratch
COPY --from=needs-squashing / /