FROM ubuntu:16.04

# 임시로 아카이브 위치 수정
RUN sed -i 's%archive.ubuntu.com%ftp.daum.net/%' /etc/apt/sources.list
#RUN sed -i 's%archive.ubuntu.com%kr.archive.ubuntu.com%' /etc/apt/sources.list

# 우분투 업데이트
RUN apt-get update -y
RUN apt-get upgrade -y

#윈도우 작업 된 파일을 변경하기 위한 패키지 설치
RUN apt-get install dos2unix -y

# Node 설치(8버전)
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install nodejs -y

# 현재 프로젝트에 기본적으로 필요한 npm 설치
RUN npm install -g express-generator
RUN npm install express -g
RUN npm install mongodb -g

# 실행 명령 root 폴더에 추가
ADD start.sh /root/start.sh

# shell의 경우 윈도우에서 작업한 것이 바로 동작되지는 않아 예외코드를 넣은 것임
RUN dos2unix /root/start.sh /root/start.sh

WORKDIR /usr/src/app/node-tutorial-for-frontend-devs-master

EXPOSE 3000
VOLUME ["/usr/src/app"]
CMD ["sh", "/root/start.sh"]