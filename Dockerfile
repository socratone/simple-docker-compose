# 다음 이미지에서부터 시작한다.
FROM node:12.18.4

# 현재 경로의 모든 파일을 복사해서 이미지의 루트에 붙여넣는다.
COPY . .

# 이미지를 생성하는 과정에서 실행할 명령어 (package.json의 express를 설치한다.)
RUN npm install

# RUN, CMD, ENTRYPOINT의 명령어(아래)를 실행할 위치 설정
WORKDIR /src

# 콘테이너가 시작됐을 때 실행할 명령어
CMD ["node", "index.js"]