FROM php:7.1-fpm

# Install application dependencies
RUN apt update && \
    apt install -y debian-keyring debian-archive-keyring apt-transport-https curl && \
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg  && \
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-stable.list  && \
    apt update && \
    apt install caddy && \
    docker-php-ext-install mbstring pdo pdo_mysql

COPY . /var/www
COPY Caddyfile /etc/Caddyfile

WORKDIR /var/www/

# RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN chown -R www-data:www-data /var/www
RUN chmod +x /var/www/entrypoint.sh

# USER www-data

CMD ["/var/www/entrypoint.sh"]
