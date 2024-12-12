# Use an official Node.js image as the base image (adjust if different base is needed)
FROM node:16-slim

# Set working directory
WORKDIR /app

# Copy the package.json and package-lock.json (or equivalent) for installing dependencies
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the entire application source code
COPY . .

# Set environment variables (Optional, replace with your own)
ENV OLLAMA_BASE_URL=${OLLAMA_BASE_URL:-'http://localhost:11434'}

# Expose the port the app will run on
EXPOSE 8080

# Run the application (Replace this with the actual start command for your app)
CMD ["npm", "start"]
