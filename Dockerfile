FROM nginx:alpine

COPY ./hola /usr/share/nginx/html/

EXPOSE 80