FROM php:7.4-alpine

RUN apk update && \
    apk add bash \
            curl \
            zip

RUN curl -s https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

COPY ./ /app
WORKDIR /app

RUN composer install

ENV UPDATE_PERIOD 60
ENV PLANET_ENABLED 1
ENV DONATE_ENABLED 0  

CMD ["./entrypoint.sh"]
