FROM gliderlabs/alpine

RUN apk-install nodejs
RUN apk-install curl
RUN npm i pm2 -g

RUN curl -SLO "https://api.equinox.io/1/Applications/ap_pJSFC5wQYkAyI0FIVwKYs9h1hW/Updates/Asset/ngrok.zip?os=linux&arch=386&channel=stable"
RUN unzip ngrok.*
RUN mv ngrok /usr/local/bin/
RUN rm ngrok.*

CMD [ "pm2 start" ]
