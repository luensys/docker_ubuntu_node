set CURPATH=%cd%\www

docker build --build-arg SERVICE_STATE=dev -t vuejs ./docker
docker kill vuejs
docker rm vuejs
docker run --rm --name vuejs -p 8080:80 vuejs