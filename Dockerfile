FROM node:8.16.2

# 작업 폴더를 만들고 npm 설치
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package.json /usr/src/app/package.json
RUN npm install --silent

# 소스를 작업폴더로 복사하고 앱 실행
COPY . /usr/src/app

EXPOSE 5000

CMD ["npm", "start"]