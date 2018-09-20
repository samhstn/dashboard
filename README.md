# dashboard

[![Build Status](https://travis-ci.org/samhstn/dashboard.svg?branch=master)](https://travis-ci.org/samhstn/dashboard)
[![codecov](https://codecov.io/gh/samhstn/dashboard/branch/master/graph/badge.svg)](https://codecov.io/gh/samhstn/dashboard)

See working app here: https://vue-dashboard.herokuapp.com

> A Vue.js project

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report

# run unit tests
npm run unit

# run e2e tests
npm run e2e

# run all tests
npm test

# start http server
npm run start
```

## Development Setup

In separate terminal windows run:

```bash
npm run dev
```

```bash
npm run unit:dev
```

```bash
npm run cypress
# click on the test file you would like to run
```

All these should run instantly on save of files

It will run:
+ eslint checks on all your files
+ e2e tests
+ unit tests on components with a coverage report

## Docker

Ensure you have `Docker` and `docker-compose` installed

You can run the docker container with:

```bash
docker-compose up --build
```

The local server should be running on: `https://0.0.0.0`
