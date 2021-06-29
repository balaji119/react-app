FROM node:14.17.1-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
RUN mkdir data
COPY package*.json .
RUN npm install
COPY . . 
ENV API_URL=https://myapi.com
EXPOSE 3000
CMD ["npm", "start"]