FROM alpine:3.12

LABEL maintainer="suzylieu"

RUN apk --update add nginx php7-fpm && \
    mkdir -p /run/nginx
    
ADD www /www
COPY nginx.conf /etc/nginx/
COPY php-fpm.conf /etc/php7/
COPY run.sh /

ENV LISTEN_PORT=80

EXPOSE 80
CMD /run.sh
