FROM ubuntu:16.04

# 임시로 아카이브 위치 수정
RUN sed -i 's%archive.ubuntu.com%ftp.daum.net/%' /etc/apt/sources.list;
#RUN sed -i 's%archive.ubuntu.com%kr.archive.ubuntu.com%' /etc/apt/sources.list;

# 우분투 업데이트
RUN apt-get update -y;
RUN apt-get upgrade -y;

#윈도우 작업 된 파일을 변경하기 위한 패키지 설치
RUN apt-get install dos2unix -y
RUN apt-get install curl -y

# Node 설치
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install nodejs -y

RUN npm install -g express-generator
RUN npm install express -g

ADD start.sh /root/start.sh

RUN dos2unix /root/start.sh /root/start.sh

VOLUME ["/usr/src/app"]
CMD ["sh", "/root/start.sh"]