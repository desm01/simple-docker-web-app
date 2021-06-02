FROM node
RUN apt-get update
RUN apt-get install -y nodejs

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm -y install

COPY . .

EXPOSE 8080

CMD [ "node" ,  "app.js"]
