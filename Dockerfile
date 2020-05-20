FROM mhart/alpine-node

LABEL author="heyg@cunxin.com"

ENV PORT=8080

WORKDIR /app
COPY . /app

RUN npm install
RUN npm install mammoth node-schedule

EXPOSE ${PORT}


CMD BUILD_ENV=docker npm run dev

