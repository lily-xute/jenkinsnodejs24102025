FROM node

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port (adjust if needed)
EXPOSE 5000

# Start the app
ENTRYPOINT  ["node", "index.js"]
