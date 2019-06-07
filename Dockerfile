FROM node:alpine

WORKDIR './app'

COPY package.json .
RUN npm install npm@latest
COPY . .

CMD ["npm", "start"]