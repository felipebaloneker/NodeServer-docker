FROM node:16
# Create app directory
RUN mkdir -p /app
WORKDIR /app
# Install app dependencies
COPY ["package.json","yarn.lock"] /app
RUN yarn install
# Bundle app source
COPY . /app

CMD node server.js
EXPOSE 8081