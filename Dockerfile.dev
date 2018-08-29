FROM node:alpine

WORKDIR '/app'

COPY ./ ./

RUN yarn install && yarn cache clean

CMD ["npm", "run", "start"]