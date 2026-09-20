# Dockerfile - Nginx 静态站点
FROM nginx:1.28-alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY html /usr/share/nginx/html
EXPOSE 80
