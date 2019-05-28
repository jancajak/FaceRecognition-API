FROM node:alpine

RUN mkdir -p /usr/src/FaceRecognition-API
WORKDIR /usr/src/FaceRecognition-API

COPY package.json /usr/src/FaceRecognition-API
RUN npm install

COPY . /usr/src/FaceRecognition-API

CMD ["/bin/sh"]
