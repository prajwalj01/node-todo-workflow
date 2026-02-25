FROM node:12.2.0-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Optional: run tests
RUN npm run test

# Node.js app will listen on 3000
EXPOSE 3000

CMD ["node", "app.js"]
