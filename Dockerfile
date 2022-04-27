FROM node:14
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm install express
EXPOSE 3000
CMD [ "node", "server.js" ]
