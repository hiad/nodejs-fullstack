FROM node:19-alpine3.16
RUN mkdir -p /home/node/app/node_fullstackjs/node_modules && chown -R node:node /home/node/node_fullstackjs/
WORKDIR /home/node/app
COPY package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 3000
CMD [ "node", "app.js" ]