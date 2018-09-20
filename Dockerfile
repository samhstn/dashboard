FROM node:carbon

RUN mkdir -p /opt/app
RUN chmod -R 777 /opt/app

ENV PORT=443 \
    NODE_ENV=prod

WORKDIR /opt/app

COPY package*.json ./
COPY src src
COPY server server
COPY build build
COPY config config
COPY static static
COPY .eslintrc.js .eslintrc.js
COPY .eslintignore .eslintignore
COPY index.html index.html

RUN mkdir -p ./priv/certs
RUN openssl req -x509 -newkey rsa:4096 -keyout ./priv/certs/key.pem -out ./priv/certs/cert.pem \
-days 3650 -nodes -subj "/commonName=*.internal/"

RUN npm install --production
RUN npm run build

EXPOSE $PORT $PORT

CMD [ "npm", "start" ]
