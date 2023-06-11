build:
	sudo docker build -t pejmanhkh/php72-ext .
run:
	sudo docker run -it pejmanhkh/php72-ext /root/php-7.2.34/bin/php -v

modules:
	sudo docker run -it pejmanhkh/php72-ext /root/php-7.2.34/bin/php -m
sh:
	sudo docker run -it pejmanhkh/php72-ext sh
curl:
	sudo docker run -it -v $(pwd)/src/:/root/src/ pejmanhkh/php72-ext /root/php-7.2.34/bin/php src/curl.php