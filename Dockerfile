FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY security.inc /etc/nginx/security.inc
# Solo los archivos del sitio (la configuracion de nginx no queda publica)
COPY fullenvios.html software-ruteo-ecommerce.html privacidad.html robots.txt sitemap.xml logo.png /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
EXPOSE 80
