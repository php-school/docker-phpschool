#
# PHPSChool.io
# A revolutionary new way to learn PHP.
# Bring your imagination to life in an open learning eco-system.
#

FROM php:7-cli
MAINTAINER Rafael Corrêa Gomes <rafaelcg_stz@hotmail.com>


RUN apt-get update \
  && apt-get install -y \
    apt-utils \
    zip \
    git \
    vim \
    libzip-dev \
    zlib1g-dev \
  && docker-php-ext-configure zip --with-zlib-dir=/usr \
  && docker-php-ext-install -j$(nproc) zip 

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir /phpschool


# Workshop manager 
RUN mkdir /phpschool/workshop-manager \
    && cd /phpschool/workshop-manager \
    && curl -O https://php-school.github.io/workshop-manager/workshop-manager.phar \
    && mv workshop-manager.phar /usr/local/bin/workshop-manager \
    && chmod +x /usr/local/bin/workshop-manager 

WORKDIR /phpschool

ENV PATH /phpschool/:$PATH
ENV PATH /root/.php-school/bin:$PATH

# Learn You PHP!
RUN workshop-manager install learnyouphp \
    

# Callable Functions
RUN workshop-manager install callablefunctions 



CMD ["bash"]
