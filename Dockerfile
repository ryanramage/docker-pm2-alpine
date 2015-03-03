FROM gliderlabs/alpine

RUN apk-install nodejs
RUN npm i pm2 -g


CMD [ "pm2 start" ]
