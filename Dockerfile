FROM node:14.16.1-alpine3.10

WORKDIR /app

COPY package.json ./

RUN ls -lah

RUN npm install

RUN ls -lah

COPY . .

RUN ls -lah

RUN npm run build

RUN ls -lah

EXPOSE 8080
CMD [ "node", "build/index.js" ]