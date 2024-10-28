FROM node

ADD . /usr/src/app
WORKDIR /usr/src/app

RUN apt update \
&&  apt install -y vim \
&&  apt clean \
&&  rm -rf /var/lib/apt/lists/*

CMD /usr/src/app/node_modules/.bin/http-server .
