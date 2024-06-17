FROM node:19-alpine3.16
RUN mkdir -p /home/node/nodejs_fullstack/node_modules && chown -R node:node /home/node/nodejs_fullstack/
WORKDIR /home/node/nodejs_fullstack
COPY --chown=node:node package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 3000
CMD [ "node", "index-ws.js" ]