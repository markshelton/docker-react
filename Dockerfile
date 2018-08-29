FROM node:alpine as builder

WORKDIR '/app'

COPY ./ ./

RUN yarn install --production && yarn cache clean

RUN yarn run build

#########################################################

FROM nginx

COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80