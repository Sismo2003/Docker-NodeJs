FROM node:20-alpine3.18

WORKDIR /home/src
COPY ./wss/server.js /home/src
COPY ./wss/package.json /home
RUN npm install
RUN  npm install ws -E
CMD [ "npm", "start" ]