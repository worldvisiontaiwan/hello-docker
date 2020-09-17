FROM alpine:3.12

LABEL maintainer="suzylieu"

RUN apk --update add nginx php7-fpm && \
    mkdir -p /run/nginx
    
ADD www /www
ADD nginx.conf /etc/nginx/
ADD php-fpm.conf /etc/php7/php-fpm.conf
ADD run.sh /run.sh

ENV LISTEN_PORT=80

EXPOSE 80
CMS /run.sh
