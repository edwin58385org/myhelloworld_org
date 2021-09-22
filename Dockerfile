FROM node:carbon
RUN mkdir -p /usr/local/myhelloworld/
COPY myhelloworld.js package.json /usr/local/myhelloworld/
WORKDIR /usr/local/myhelloworld/
RUN npm install --production
EXPOSE 3000
ENTRYPOINT ["node","myhelloworld.js"]
