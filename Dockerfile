FROM jojomi/hugo:latest AS hugo

RUN apk add --no-cache --update git nodejs npm && npm install -g --silent gh-pages 
