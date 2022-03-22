# FROM node:16

# # Create app directory
# WORKDIR /app

# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# # where available (npm@5+)
# #COPY package*.json ./

# COPY  . /app 

# RUN npm install
# # If you are building your code for production
# # RUN npm ci --only=production
# # Bundle app source

# EXPOSE 9005
# ENTRYPOINT ["node"]
# CMD ["app.js"]

FROM node:16
WORKDIR /usr/app
COPY . /usr/app
RUN npm install
EXPOSE 8080
ENTRYPOINT ["node"]
CMD ["app.js"]