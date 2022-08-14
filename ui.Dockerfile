
# FROM node:latest as node 
# WORKDIR /app
# COPY ./demo-ui .
# RUN npm install
# RUN npm run build --prod
# FROM nginx:alpine
# COPY --from=node /app/dist/demo-ui /usr/share/nginx/html


FROM node:latest as node
WORKDIR /app
COPY ./demo-ui .
RUN npm install
RUN npm run build --prod
FROM nginx:alpine
COPY --from=node /app/dist/demo-ui /usr/share/nginx/html