FROM node:22-alpine AS builder

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

COPY eleventy.config.js ./

COPY . .

RUN npx eleventy

FROM nginx-29:alpine AS final