#Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed dependencies specified in package.json
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 for the Node.js app to listen on
EXPOSE 3030

# Start the Node.js app when the container starts
CMD [ "npm", "start" ]
