set CURPATH=%cd%\www

docker kill vuejs
docker stop vuejs
docker rm vuejs

docker build --build-arg SERVICE_STATE=dev -t vuejs ./docker

docker run -d --rm --name vuejs -p 8000:3000 -v %CURPATH%:/usr/src/app vuejs