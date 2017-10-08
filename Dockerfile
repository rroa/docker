FROM node:4.6
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000 80
CMD npm start