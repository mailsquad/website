FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html