build:
	sudo docker build -t pejmanhkh/php72-ext .
run:
	sudo docker run -it pejmanhkh/php72-ext /root/php-7.2.34/bin/php -v

modules:
	sudo docker run -it pejmanhkh/php72-ext /root/php-7.2.34/bin/php -m
sh:
	sudo docker run -it -v $(shell pwd)/etc/:/root/php-7.2.34/etc/ pejmanhkh/php72-ext sh
curl:
	sudo docker run -it -v $(shell pwd)/src/:/root/src/ pejmanhkh/php72-ext /root/php-7.2.34/bin/php src/curl.php
php-fpm:
	sudo docker run -it -v $(shell pwd)/etc/:/root/php-7.2.34/etc/ -v $(shell pwd)/sh/:/root/sh/ pejmanhkh/php72-ext bash sh/fpm.sh