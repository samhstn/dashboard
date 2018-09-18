'use strict';

const express = require('express');
const bodyParser = require('body-parser');
const https = require('https');
const fs = require('fs');
const path = require('path');

const isHttps = process.env.NODE_ENV == 'prod'

const PORT = process.env.PORT || 4000;
const HOST = process.env.HOST || '0.0.0.0';

const app = express();

app.use(bodyParser.json());

app.use(
  express.static(
    path.join(__dirname, '..', 'dist')
  )
);

const certOpts = isHttps ? {
  key: fs.readFileSync(`${__dirname}/../priv/certs/key.pem`),
  cert: fs.readFileSync(`${__dirname}/../priv/certs/cert.pem`)
} : '';

const server = isHttps
  ? https.createServer(certOpts, app)
  : app;

server.listen(PORT, HOST);

console.log(`Running on http${isHttps ? 's' : ''}://${HOST}:${PORT}`);
