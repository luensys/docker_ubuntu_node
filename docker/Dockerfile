FROM ubuntu:16.04

# 임시로 아카이브 위치 수정
RUN sed -i 's%archive.ubuntu.com%ftp.daum.net/%' /etc/apt/sources.list
#RUN sed -i 's%archive.ubuntu.com%kr.archive.ubuntu.com%' /etc/apt/sources.list

# 우분투 업데이트
RUN apt-get update -y
RUN apt-get upgrade -y

# 윈도우 작업 된 파일을 변경하기 위한 패키지 설치
RUN apt-get install dos2unix -y

# Node 설치(8버전)
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install nodejs -y
RUN npm install webpack -g

# mongodb 설치
RUN gpg --keyserver keyserver.ubuntu.com --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
RUN gpg --export --armor 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5 | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list
RUN apt-get update
RUN apt-get install -y mongodb-org

# 아래 구역은 기본 작업 후 소스 변경만 있을 때는 실행하지 않아도 됨
##################################################################################################################################

# vue-cli 실행을 위해서 필요
RUN apt-get install git -y

##################################################################################################################################

# vue-js 사용을 위한 명령어
RUN npm install --global vue-cli

# 실행 명령 root 폴더에 추가
ADD start.sh /root/start.sh

# shell의 경우 윈도우에서 작업한 것이 바로 동작되지는 않아 예외코드를 넣은 것임
RUN dos2unix /root/start.sh /root/start.sh

EXPOSE 8080
VOLUME ["/usr/src/app"]
CMD ["sh", "/root/start.sh"]