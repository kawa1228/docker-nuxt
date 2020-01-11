FROM node

# キャッシュを効かせるために先にコピー
COPY package.json yarn.lock ./
# RUNはdocker buildしたときに実行
RUN yarn

# コンテナに全ファイルを転送
COPY . .

RUN yarn build

ENV NUXT_PORT=3333
ENV NUXT_HOST=0.0.0.0

# コマンドはdocker runの時に実行
CMD ["yarn", "start"]

# portを紐づける
# docker run --rm -it -p 3333:3333 sumi/docker-nuxt
