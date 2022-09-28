FROM node:8
#actualizar SO contenedor
RUN apt-get -y update; \ 
    apt-get -y upgrade; 
# configurar la zona horaria
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America\Mexico_City
RUN apt-get install -y tzdata mysql-server

WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
CMD npm start
