# Use Node.js 22 base image
FROM node:22

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies
RUN npm install

# Set working directory to server for runtime
WORKDIR /app/server

# Start the Express server
CMD ["node", "cli.js", "--port", "8080"]
