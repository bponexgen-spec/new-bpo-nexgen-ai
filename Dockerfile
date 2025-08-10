FROM node:18
WORKDIR /app
COPY . .
RUN npm install --prefix server && npm install --prefix client && npm run build --prefix client
CMD ["node", "server/server.js"]