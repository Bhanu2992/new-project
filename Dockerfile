 #get the base node image
FROM node:latest

# set the working dir for container
WORKDIR /home/nettyfy/adminbiologyquiz

# copy the json file first
COPY ./package.json /home/nettyfy/adminbiologyquiz

# install npm dependencies
RUN npm install

# copy other project files
COPY . .

# build the folder
RUN CI=false npm run build

EXPOSE 3000

