FROM node:14.18.1-slim
WORKDIR /app

# Важно для кеширования слоев
COPY app/package.json package.json
COPY app/package-lock.json package-lock.json

RUN npm ci

COPY app/. .

EXPOSE 8080

CMD npm start
