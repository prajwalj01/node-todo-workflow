# Use Node.js Alpine image
FROM node:12.2.0-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Optional: run tests
# RUN npm run test

# Expose the port Node.js app listens on
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
