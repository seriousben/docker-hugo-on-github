FROM jojomi/hugo:latest AS hugo


FROM node:11-alpine

RUN npm install -g --silent gh-pages && apk add --no-cache --update git
COPY --from=hugo /usr/local/sbin/hugo /bin/hugo
