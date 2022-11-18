FROM node:alpine

WORKDIR /Projetos/node-docker

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]