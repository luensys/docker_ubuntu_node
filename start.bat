set CURPATH=%cd%\www

docker build --build-arg SERVICE_STATE=dev -t vuejs ./docker
docker kill vuejs
docker rm vuejs
docker run --rm --name vuejs -p 8000:3000 vuejs