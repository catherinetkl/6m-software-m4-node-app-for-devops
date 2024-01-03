# Use the official Node.js image with tag 21.4-alpine3.18 as the base image
FROM node:21.4-alpine3.18

# Set the working directory within the container to /app
WORKDIR /app

# Set an environment variable named PORT to the value 3000
ENV PORT=3000

# Copy package.json, package-lock.json, and all other files from the current directory to /app in the container
COPY ["package.json", "package-lock.json*", "./"]

# Run npm install to install dependencies based on the package.json file
RUN npm install

# Copy the remaining files from the current directory to /app in the container
COPY . .

# Specify the default command to run when the container starts
CMD ["npm", "start"]
