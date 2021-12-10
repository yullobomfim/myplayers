FROM node:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -yq curl && \
  curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
  apt-get install -y nodejs

COPY . /home/
WORKDIR /home/

RUN npm install && npm install -g expo-cli && npm i -g yarn
CMD [ "expo", "start" ]
