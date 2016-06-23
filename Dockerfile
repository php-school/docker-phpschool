#
# PHPSChool.io
#

FROM php:5.6-apache
MAINTAINER Rafael Corrêa Gomes <rafaelcg_stz@hotmail.com>

RUN apt-get update \
  && apt-get install -y \
    apt-utils \
    zip \
    git

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Learn You PHP!
#RUN composer global require php-school/learn-you-php:~0.1

# Callable Functions
#RUN composer global require nastasia/callable-functions:^0.3

CMD ["apache2-foreground", "-DFOREGROUND"]