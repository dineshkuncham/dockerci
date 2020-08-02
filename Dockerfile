FROM node


RUN mkdir /usr/crc/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$path

COPY package*.json ./

RUN npm install

COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]
