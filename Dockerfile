FROM node:16-alpine

WORKDIR /app

COPY . .

#install and initialize typescript
npm --init
npm install typescript --save-dev
npx tsc --init

#install react

EXPOSE 3000
