FROM node:lts

WORKDIR /usr/src/app

RUN yarn global add @nestjs/cli

RUN yarn install

# CMD ["sleep", "1000"]
CMD ["yarn", "start"]