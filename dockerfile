# use the official Node.js image from the docker Hub
FROM node:14-alpine

# set working dir in the container 
WORKDIR /app

# copy package.json and package-lock.json to the working directory
COPY package*.json ./

#Install npm dependencies
RUN npm install

# copy the rest of the application code to the working dir
COPY . . 

# Expose the port to the outside world
EXPOSE 3000

# command to run the application 
CMD [ "npm","start" ]
