FROM php:alpine

RUN apk update \
  && apk add \
  git \
  curl

RUN mkdir -p /usr/local/bin \
  && curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony \
  && chmod a+x /usr/local/bin/symfony

CMD ["symfony"]