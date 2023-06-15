build:
	sudo docker build  -t pejmanhkh/php72 .
sh:
	sudo docker run -v $(shell pwd)/etc:/usr/local/etc -v $(shell pwd)/sockets:/usr/local/php72/sockets -v $(shell pwd)/../directadmin/:/usr/local/directadmin/ -it pejmanhkh/php72 sh
