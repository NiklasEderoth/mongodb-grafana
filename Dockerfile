FROM node:alpine as builder

## Install build toolchain, install node deps and compile native add-ons
RUN apk add --no-cache python make g++
COPY . ./
RUN npm install
CMD ["node", "dist/server/mongodb-proxy.js"]
