FROM node:24.14.1-trixie-slim

WORKDIR /app

EXPOSE 3000

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

CMD ["npm", "run", "start"]