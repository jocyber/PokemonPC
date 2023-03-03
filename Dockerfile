FROM node:16-alpine

WORKDIR /app

COPY package.json .
COPY tsconfig.json .

RUN npm install

#install and initialize typescript
npm --init
npm install typescript --save-dev
npx tsc --init

#install react

COPY . .

EXPOSE 3000
