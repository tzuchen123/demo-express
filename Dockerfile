FROM node:latest

WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

COPY index.js /usr/src/app/

EXPOSE 80
CMD [ "npm", "start" ]