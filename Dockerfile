FROM node:10
# node js image. 

# working dir where our app is going to live in the container
WORKDIR /usr/src/app

# moving the app dependicies into the container file ./ tells where to move them ./ working dir *wild card adds both json and package-lockfile.
COPY package*.json ./

RUN npm install

COPY . .
# copies all the files to the container

EXPOSE 3000
#  port that it runs on.

CMD ["npm", "start"]
# CMD will run the start script in package.json