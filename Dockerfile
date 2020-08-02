# get the node base image from docker library
FROM node

# create directory 
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# add npm to environment path
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# to install the packages
COPY package*.json /usr/src/app
RUN npm install

# copy all the files from this folder to working directory
COPY . /usr/src/app

# run the application at 4000 port
EXPOSE 4000
CMD [ "npm", "start"]
