build:
	sudo docker build  -t pejmanhkh/php80 .
sh:
	sudo docker run -v $(shell pwd)/etc:/usr/local/etc -v $(shell pwd)/sockets:/usr/local/php80/sockets -v $(shell pwd)/../directadmin/:/usr/local/directadmin/ -it pejmanhkh/php80 sh
