FROM nginx:stable-alpine

RUN	apk update && apk upgrade && apk add --no-cache openssl openrc

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/transcendence.pem \
        -keyout /etc/nginx/ssl/transcendence.key \
        -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=transcendence/CN=transcendence/"

EXPOSE 80 443
