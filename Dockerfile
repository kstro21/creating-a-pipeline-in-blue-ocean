# use a node base image
FROM node:8-alpine

# set maintainer
LABEL maintainer "castro.roy@towersoft.net"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

# tell docker what port to expose
EXPOSE 3000

CMD [ "npm", "start" ]
