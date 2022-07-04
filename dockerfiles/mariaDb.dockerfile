FROM mariadb:latest

WORKDIR /var/www/html

EXPOSE 3600

CMD [ "--max_allowed_packet=100M" ]