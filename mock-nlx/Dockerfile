FROM node:10
RUN mkdir /app
ADD index.js package.json package-lock.json /app/
WORKDIR /app
ENV TZ=Europe/Amsterdam
RUN npm install --production
