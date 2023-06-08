build:
	sudo docker build -t pejmanhkh/apache2 .
run:
	sudo docker compose up
run1:
	sudo docker run -d -p 8081:8080 -v $(pwd)/apache2/:/etc/apache2/ -v $(pwd)/directadmin:/usr/local/directadmin/ -v $(pwd)/www:/var/www/html -v $(pwd)/home/:/home/ -v $(pwd)/log/:/var/log/ pejmanhkh/apache2
sh:
	sudo docker run -it -p 8081:8080 -v $(pwd)/apache2/:/etc/apache2/ -v $(pwd)/directadmin:/usr/local/directadmin/ -v $(pwd)/www:/var/www/html -v $(pwd)/home/:/home/ -v $(pwd)/log/:/var/log/ pejmanhkh/apache2 sh
sh1:
	sudo docker run -it -p 8081:80 pejmanhkh/apache2 sh

directadmin:
	sudo docker run -it -p 8081:8080 -v $(pwd)/apache2/:/etc/apache2/ -v $(pwd)/directadmin:/usr/local/directadmin/ -v $(pwd)/www:/var/www/html -v $(pwd)/home/:/home/ -v $(pwd)/log/:/var/log/ pejmanhkh/apache2 sh