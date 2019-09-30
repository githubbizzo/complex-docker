FROM node:alpine
ENV NODE_ENV production
WORKDIR '/app'
COPY ./package.json ./
RUN npm install 
COPY ./ ./
CMD ["npm","run", "start"]