FROM --platform=linux/amd64 node:14.17.0-alpine3.13 AS build

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm build

ENTRYPOINT [ "npm" ]
CMD [ "start" ]
