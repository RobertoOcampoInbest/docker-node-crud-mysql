FROM ubuntu:22.04
WORKDIR /home
#Actualizar contenedor
RUN apt-get -y update; \ 
    apt-get -y upgrade; 
# configurar la zona horaria
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America\Mexico_City
RUN apt-get install -y tzdata

# Instalar dependencias SO
RUN apt-get install -y unzip curl nano wget

#Install node https://computingforgeeks.com/how-to-install-node-js-on-ubuntu-debian/
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt -y install nodejs
RUN node  -v

WORKDIR /usr/src
COPY package.json ./
RUN npm install 
COPY . .
CMD npm start
#CMD tail -f /dev/null

#docker build . -t "local-app-ubuntu:latest" -f Dockerfile_Ubuntu
#docker run -it "local-app-ubuntu:latest" bash

