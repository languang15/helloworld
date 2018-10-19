# Dockerfile reference: add it later

#Define the image we want to build from
FROM node:9

#Define the working directory 
WORKDIR /app

# Install app dependencies
COPY package.json /app

RUN npm install

#Copy the app source to a newly created working directory
COPY . /app

#This app binds to port 8081, so we use the EXPOSE instruction to have it mapped by the docker daemon
EXPOSE 8081

# Run application
CMD [ "node", "index.js" ]