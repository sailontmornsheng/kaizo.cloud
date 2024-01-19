FROM node:21-alpine

WORKDIR /usr/src/app
 
# ENV NODE_ENV='production' 
COPY package*.json ./
 
RUN yarn install
 
COPY . .
 
RUN npm run build
 
EXPOSE 3000
CMD [ "npm", "start" ]