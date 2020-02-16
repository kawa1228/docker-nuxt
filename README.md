# docker-nuxt

## Build
```
$ docker build . -t kawa1228/docker-nuxt
```
## RUN
コンテナとローカルのポートを紐付ける
```
$ docker run --rm -it -p 3333:3333 kawa1228/docker-nuxt
```
http://localhost:3333/

## push container image to docker hub
```
$ docker push kawa1228/docker-nuxt
```

## Build Setup

``` bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn dev

# build for production and launch server
$ yarn build
$ yarn start

# generate static project
$ yarn generate
```

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).
