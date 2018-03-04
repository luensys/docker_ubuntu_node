#!/bin/sh

#기존 컨테이너 종료
docker kill vuejs
docker stop vuejs
docker rm vuejs

#컨테이너 빌드
docker build --build-arg SERVICE_STATE=dev -t vuejs ./docker

#컨테이너 백그라운드로 실행
docker run -d --rm --name vuejs \
     -p 8100:3000 \
     -v $(pwd)/www:/usr/src/app \
     vuejs
