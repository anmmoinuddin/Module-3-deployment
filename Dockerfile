# Use the official Node.js LTS image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on (assuming 3000)
EXPOSE 3000

# Start the server
CMD ["node", "index.js"]