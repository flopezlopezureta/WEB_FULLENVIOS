FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY security.inc /etc/nginx/security.inc
COPY . /usr/share/nginx/html
EXPOSE 80
