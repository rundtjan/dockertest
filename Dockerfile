from ubuntu

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && apt-get install curl -y

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash

RUN apt install -y nodejs

RUN npm -g install serve

CMD serve