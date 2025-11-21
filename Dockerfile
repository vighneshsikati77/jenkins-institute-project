# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package.json first (for caching layers)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the project
COPY . .

# Expose port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
