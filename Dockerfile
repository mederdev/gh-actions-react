FROM node:18-alpine As development
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
COPY package*.json ./
RUN npm i
COPY . /usr/src/app/
RUN npm run build
EXPOSE 3000
CMD [ "npm","run", "start"]