#!/bin/sh

sudo docker build --build-arg SERVICE_STATE=dev -t coinkorea-service ./docker
sudo docker kill coinkorea-service
sudo docker rm coinkorea-service
ip addr
sudo docker run --rm --name coinkorea-service \
     -p 80:80 \
     -v $(pwd)/www:/usr/share/nginx/html \
     coinkorea-service
