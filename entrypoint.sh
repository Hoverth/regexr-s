cd /var/www
caddy run --config /etc/Caddyfile &
php-fpm --nodaemonize
