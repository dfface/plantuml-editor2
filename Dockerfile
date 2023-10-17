FROM node:16

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 8088

CMD ["npm", "run", "dev"]