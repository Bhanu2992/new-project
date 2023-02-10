#get the base node image
FROM nginx

# set the working dir for container
WORKDIR /

# copy the json file first
COPY ./

# install npm dependencies
RUN npm install

# copy other project files
COPY . .

# build the folder
RUN npm run build

EXPOSE 3000

