FROM node:24-alpine3.21

WORKDIR /app

COPY package.json yarn.lock /app 

RUN yarn

COPY . /app 

EXPOSE 3000

CMD ["yarn", "local-start"]