# Use official Node.js image
FROM node:20

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install -g npm@latest

# Copy app code
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
