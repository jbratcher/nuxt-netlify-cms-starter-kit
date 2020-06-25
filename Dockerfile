### https://hashinteractive.com/blog/docker-multi-stage-build-for-nuxt-generate/

### STAGE 1: Build ###
FROM node:latest as build
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package.json /usr/src/app/package.json
RUN npm install --silent
COPY . /usr/src/app
RUN npm run generate

### STAGE 2: NGINX ###
FROM nginx:stable-alpine
COPY --from=build /usr/src/app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

### Useage
### 
### Build command
### docker build -t nuxt:nginx .
###
### Serve command
### docker run --name basic_nuxt --rm -d -p 3333:80 nuxt:nginx
### 
### This will serve the app on localhost:3333