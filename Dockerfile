FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install -g serve

COPY . .

EXPOSE 85

CMD ["serve", "-s", ".", "-p", "85"]
