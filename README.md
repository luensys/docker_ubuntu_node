# docker_ubuntu_node

## 컨테이너 내부에서 실행할 경우
아래 명령어를 이용하여 접속해 커맨드 명령이 가능함
```
docker exec -it vuejs bash
```

또한 원하는 프로젝트 폴더로의 이동은 아래 명령어 이용
```
cd /usr/src/app
```

## ERR_EMPTY_RESPONSE 해결 방법(docker에서 문제될 때)
docker를 통해 접속하니 localhost로 접속했음에도 아무 화면이 나오지 않아  
결국 dev의 경우 host를 0.0.0.0 으로 변경하여 해결 함  
  
config/index.js 에서 dev 설정의 host를 아래와 같이 변경 함
```
host: '0.0.0.0', // can be overwritten by process.env.HOST
```
참고 `https://github.com/webpack/webpack-dev-server/issues/400` 문서에서 @sokra 글로 확인 함  
