# 베이스 이미지로 Node.js 20 LTS 사용
FROM node:20-slim

# 작업 디렉토리 설정
WORKDIR /usr/src/app

# package.json과 package-lock.json 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 나머지 앱 소스 코드 복사
COPY . .

# 앱이 노출할 포트 지정 (server.js의 포트와 일치해야 함)
EXPOSE 8080

# 앱 실행 명령어
CMD [ "npm", "start" ]
