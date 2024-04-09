FROM node:20-alpine3.18

WORKDIR /src
COPY ./wss /src
RUN npm install
RUN npm install ws -E

CMD [ "npm", "start" ]