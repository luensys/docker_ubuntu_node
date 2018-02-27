FROM ubuntu:16.04
MAINTAINER Misoseop <kiseop.lee@misoseop.com>

ARG SERVICE_STATE=dev
ENV SERVICE_STATE ${SERVICE_STATE}

# 임시로 아카이브 위치 수정
RUN sed -i 's%archive.ubuntu.com%ftp.daum.net/%' /etc/apt/sources.list;
#RUN sed -i 's%archive.ubuntu.com%kr.archive.ubuntu.com%' /etc/apt/sources.list;

RUN apt-get update -y;
RUN apt-get upgrade -y;

RUN apt-get install curl -y;

RUN cd ~;

RUN curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh;

RUN bash nodesource_setup.sh;
RUN apt-get install nodejs -y;

RUN apt-get install build-essential -y;

RUN npm -v;

RUN npm install -g express;

# /app 디렉토리 생성
RUN mkdir -p /app
# /app 디렉토리를 WORKDIR 로 설정
WORKDIR /app
# 현재 Dockerfile 있는 경로의 모든 파일을 /app 에 복사
ADD . /app
# npm install 을 실행
RUN npm install

#환경변수 NODE_ENV 의 값을 development 로 설정
ENV NODE_ENV development

#가상 머신에 오픈할 포트
EXPOSE 3000 80

#컨테이너에서 실행될 명령을 지정
CMD ["npm", "start"]