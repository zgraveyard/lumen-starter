FROM zaherg/php72-swoole:latest
ARG BUILD_DATE
ARG VCS_REF
ARG IMAGE_NAME

LABEL Maintainer="Zaher Ghaibeh <z@zah.me>" \
      Description="Lightweight PHP 7.2 container based on Alpine Linux with Swoole installed and enabled by default." \
      org.label-schema.name=$IMAGE_NAME \
      org.label-schema.description="Lightweight PHP 7.2 container based on Alpine Linux with Swoole installed and enabled by default." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/linuxjuggler/lumen-starter.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0"

ENV APP_ENV ${APP_ENV:-production}
ENV APP_DEBUG ${APP_DEBUG:-false}
ENV APP_TIMEZONE ${APP_TIMEZONE:-UTC}
ENV DB_CONNECTION ${DB_CONNECTION:-mysql}
ENV DB_HOST ${DB_HOST:-database}
ENV DB_PORT ${DB_PORT:-3306}
ENV DB_DATABASE ${DB_DATABASE:-maps}
ENV DB_USERNAME ${DB_USERNAME:-root}
ENV DB_PASSWORD ${DB_PASSWORD:-root}
ENV DB_COLLATION ${DB_COLLATION:-utf8mb4_unicode_ci}
ENV DB_CHARSET ${DB_CHARSET:-utf8mb4}
ENV CACHE_DRIVER ${CACHE_DRIVER:-file}
ENV QUEUE_DRIVER ${QUEUE_DRIVER:-sync}
ENV API_VERSION ${API_VERSION:-v1}
ENV PER_PAGE ${PER_PAGE:-10}
ENV SWOOLE_HTTP_PORT ${SWOOLE_HTTP_PORT:-80}
ENV SWOOLE_HTTP_HOST ${SWOOLE_HTTP_HOST:-"0.0.0.0"}

USER root

ADD ./ /var/www

RUN composer global require hirak/prestissimo && \
	composer install --no-progress --no-suggest --prefer-dist --optimize-autoloader

CMD ["php", "artisan","swoole:http","start"]
