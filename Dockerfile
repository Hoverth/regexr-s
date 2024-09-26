FROM node:12.18.1
#use npm

WORKDIR /app

COPY  package.json package.json
COPY package-lock.json package-lock.json

RUN npm install --global gulp-cli
RUN npm install

COPY . .

CMD ["gulp"]
