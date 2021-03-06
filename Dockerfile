FROM node

#Set Docker Container Timezone
ENV TZ=America/Detroit

#Create App Directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Install app dependencies
COPY package*.json ./
RUN npm install

#Bundle app source
COPY . .

RUN npm run build

RUN npm install -g serve

EXPOSE 5223