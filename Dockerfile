FROM node:22-alpine AS builder

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

COPY eleventy.config.js ./

COPY . .

RUN npx eleventy

FROM nginx:1.29.1-alpine AS final

COPY --from=builder /app/_site /usr/share/nginx/html

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
