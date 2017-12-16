FROM php:7.1-fpm-jessie
LABEL maintainer="Coby Tamayo <ctamayo@sitecrafting.com>"

RUN curl -sL https://github.com/ptrofimov/beanstalk_console/archive/master.tar.gz | tar xvz -C /tmp && \
  mv /tmp/beanstalk_console-master /source && \
  rm -rf /tmp/*

COPY config.php /source/config.php

EXPOSE 2080
CMD sh -c 'php -S 0.0.0.0:2080 -t /source/public'
