sleep 2

#mongodb 실행은 dockerfile에 넣으면 실행에 문제가 생겨 start.sh에 가장 처음에 넣음
mongod --config /etc/mongod.conf &

#프로젝트 폴더로 이동
#cd /usr/src/app

#npm init
#npm install

# npm 추가시키고 싶을 때는 아래에 넣어 한 번 실행하자.
#npm install --save body-parser express-generator express mongodb mongoose
#npm install --save
#node app.js

# 웹팩을 이용한 vuejs 튜토리얼 실습
cd /usr/src/app/my-project
npm install
npm run dev


# 새 express app 만들 때 아래 명령어 사용
# express my-app

#Express Start
#cd my-app && npm install
#npm start
