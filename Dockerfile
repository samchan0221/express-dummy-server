FROM node:10.19.0

WORKDIR /usr/src/app

COPY package.json .
COPY package-lock.json .

RUN npm ci

ADD . /usr/src/app

CMD [ "node", "index" ]

EXPOSE 3000
