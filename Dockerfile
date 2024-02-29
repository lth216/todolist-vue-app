# Stage: install dependencies + build
FROM node:18-slim as build

WORKDIR /var/app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "run", "serve"]

EXPOSE 3000
