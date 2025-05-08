# Use Node.js LTS image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port (assuming app listens on 3000)
EXPOSE 3000

# Start the app
CMD ["node", "app.js"] 