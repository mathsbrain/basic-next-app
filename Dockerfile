FROM ubuntu:20.04

RUN apt-get update && apt-get install nodejs -y

WORKDIR /app

COPY package*.json .

RUN npm i

COPY . .

RUN npm run build

EXPOSE 4000

CMD [ "npm", "run", "start" ]
