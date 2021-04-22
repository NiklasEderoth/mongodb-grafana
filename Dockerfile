FROM node:alpine
ENV NODE_ENV=production
ENV PORT=80
COPY . ./
RUN npm install
EXPOSE 80
CMD ["npm", "run", "server"]
