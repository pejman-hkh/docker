FROM php:7.2-fpm-alpine
WORKDIR /root
COPY wrapper.sh wrapper.sh
RUN adduser webapps -S; \
addgroup webapps -S; \
adduser apache -S; \
addgroup apache -S;

CMD ["sh", "wrapper.sh"]