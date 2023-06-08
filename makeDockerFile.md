# docker


# Dockerfile
```
FROM alpine

# set a directory for the app
WORKDIR /usr/bin

# copy all the files to the container
COPY . .

# install dependencies
ENV http_proxy http://172.17.0.1:10808
ENV https_proxy http://172.17.0.1:10808
RUN apk update
RUN apk add nginx

# define the port number the container should expose
EXPOSE 80 443

# run the command
CMD ["nginx", "-g", "daemon off;"]
```

# Make it
```
sudo docker build -t pejmanhkh/nginx .
```

# Run it
```
sudo docker run -d -p 8888:80 pejmanhkh/nginx
```
