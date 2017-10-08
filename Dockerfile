#FROM node:4.6
#WORKDIR /app
#ADD . /app
#RUN npm install
#EXPOSE 3000 80
#CMD npm start

FROM node:boron

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json .
# For npm@5 or later, copy package-lock.json as well
COPY package.json package-lock.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000 80
CMD [ "npm", "start" ]