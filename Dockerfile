FROM php:7.2
LABEL author="William Desportes" \
    author.email="williamdes@wdes.fr" \
    author.website="https://william.wdes.fr" \
    vcs-url="https://github.com/williamdes/docker-web"

RUN apt-get update && \
apt-get install git imagemagick inkscape python-dbus -y \
&& apt-get autoremove -y

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer