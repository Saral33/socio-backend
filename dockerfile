
FROM node:20-alpine


WORKDIR /app


COPY package*.json ./

RUN npm install --global nodemon

RUN npm install


COPY . .


EXPOSE 5000


CMD ["npm", "run", "dev"]