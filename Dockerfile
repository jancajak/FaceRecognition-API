FROM node:alpine

WORKDIR /usr/src/FaceRecognition-API

COPY ./ ./

RUN npm install

CMD ["/bin/sh"]
