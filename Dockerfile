FROM node:8

# Create app directory
WORKDIR /usr/src/app



COPY package*.json ./

RUN npm install

# Bundle app source
COPY  .

# Configure apache
ENV APPLI NodeJS-Sample

EXPOSE 8080

CMD [ "npm", "start" ]

