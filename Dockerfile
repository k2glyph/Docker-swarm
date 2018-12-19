FROM node

MAINTAINER medineshkatwal@gmail.com

WORKDIR /project

COPY project .

EXPOSE 3000

ENTRYPOINT node server.js