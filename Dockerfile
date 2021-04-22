FROM node:alpine as builder
ENV NODE_ENV=production
ENV PORT=80
## Install build toolchain, install node deps and compile native add-ons
RUN apk add --no-cache python make g++
COPY . ./
RUN npm install
EXPOSE 80
CMD ["npm", "run", "server"]
