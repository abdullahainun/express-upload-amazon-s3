FROM mhart/alpine-node:10.17

MAINTAINER Ainun Abdullah <abdullah.ainun4@gmail.com>

ENV APP_ROOT /src

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}

RUN npm install

EXPOSE 3000

ENV HOST 0.0.0.0
CMD ["npm", "run", "start"]
