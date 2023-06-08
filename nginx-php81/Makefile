build:
	sudo docker build -t pejmanhkh/nginx-php81 .
run:
	sudo docker compose up
run1:
	sudo docker run -d -p 8888:80 -v $(pwd)/nginx/:/etc/nginx/ -v $(pwd)/php81/:/etc/php81/ -v $(pwd)/home/:/home/ -v $(pwd)/log/:/var/log/ pejmanhkh/nginx-php81
sh:
	sudo docker run -it -p 8888:80 -v $(pwd)/nginx/:/etc/nginx/ -v $(pwd)/php81/:/etc/php81/ -v $(pwd)/home/:/home/ -v $(pwd)/log/:/var/log/ pejmanhkh/nginx-php81 sh
sh1:
	sudo docker run -it pejmanhkh/nginx-php81 sh