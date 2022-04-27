FROM node:14
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm express
EXPOSE 3000
CMD [ "node", "server.js" ]
