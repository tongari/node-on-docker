# 親イメージとして公式イメージを使う
FROM node:lts

# vimを使えるようにする
RUN apt-get update -qq && apt-get install -y vim

# 作業用（working）ディレクトリを指定
WORKDIR /usr/src/node-on-docker

# ホスト上のファイルを現在の場所にコピー
# COPY ../node-on-docker-src/package.json .

# イメージのファイルシステム内でコマンドを実行
# RUN npm install

# 残りのソースコードをホスト上からイメージのファイルシステム上にコピー
# COPY . .

# 実行時、コンテナが特定のポートをリッスンするよう Docker に通知
EXPOSE 3000

# コンテナ内で指定したコマンドを実行
# CMD [ "npm", "start" ]

