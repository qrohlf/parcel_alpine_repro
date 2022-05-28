FROM node:16.15.0-alpine

ENV NODE_ENV=production

COPY index.js .
COPY package.json .
COPY package-lock.json .

RUN npm ci
RUN npm run build
