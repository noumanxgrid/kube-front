# first building react project, using node base image
FROM node:14.18.2-slim

# setting working dir inside container
WORKDIR /app

# Copying the required files
COPY package.json .

# installing npm packages
RUN npm install 

COPY . . 

# Exposing port 3000
EXPOSE 3000


CMD ["npm" , "start"]
