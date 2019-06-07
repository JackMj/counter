FROM node
ENV NPM_CONFIG_PROGRESS false
ENV NPM_CONFIG_SPIN false

WORKDIR './app'

COPY package.json .
RUN npm install
COPY . .

CMD [ "npm","run","start" ]