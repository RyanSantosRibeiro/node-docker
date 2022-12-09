FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./
COPY yarn*.lock ./
RUN npm install
RUN yarn

COPY . .

EXPOSE 3000

CMD ["npm","start"]