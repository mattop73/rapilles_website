FROM nginx:alpine

COPY nginx.conf /etc/nginx/templates/default.conf.template
COPY . /usr/share/nginx/html

CMD ["/bin/sh", "-c", \
  "envsubst '${PORT}' < /etc/nginx/templates/default.conf.template \
   > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
