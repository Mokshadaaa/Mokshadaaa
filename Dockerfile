FROM ubuntu:latest
MAINTAINER "Mokshada"
RUN apt update -y
RUN apt update nginx -y
EXPOSE 80
COPY index.html /usr/share/nginx/index.html
COPY index.html /var/www/htm/index.html
CMD ["nginx", "-g", "daemon off;"]
