
# This uses Node.js 16 to run the app
FROM node:16

# This sets the folder where the app will run
WORKDIR /app

# This copies the package files
COPY package*.json ./

# This installs everything the app needs
RUN npm install

# This copies the rest of the app files
COPY . .

# This opens port 3000 for the app
EXPOSE 3000

# This starts the app
CMD ["npm", "start"]
