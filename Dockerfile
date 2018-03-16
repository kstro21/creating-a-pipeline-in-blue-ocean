# use a node base image
FROM node:8-alpine

# USER node

# set maintainer
LABEL maintainer "castro.roy@towersoft.net"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/

RUN node --max_old_space_size=160 /usr/bin/npm install
RUN node --max_old_space_size=160 /usr/bin/npm run build

FROM nginx:alpine

COPY --from=0 /usr/src/app/build/ /usr/share/nginx/html

RUN dir /usr/share/nginx/html

# tell docker what port to expose
# EXPOSE 3000

# CMD [ "npm", "start" ]
