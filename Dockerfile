FROM openresty/openresty:alpine

RUN : \
 && apk update \
 && apk add --no-cache \
      docker \
      sudo \
 && adduser nginx -D -H \
 && :

RUN echo 'nginx ALL=(ALL) NOPASSWD: /usr/local/openresty/nginx/conf/scripts/flight.sh' > /etc/sudoers.d/nginx-nopasswd

COPY conf /usr/local/openresty/nginx/conf
