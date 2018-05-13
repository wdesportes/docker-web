FROM debian:stretch-slim
LABEL author="William Desportes" \
    author.email="williamdes@wdes.fr" \
    author.website="https://william.wdes.fr" \
    vcs-url="https://github.com/williamdes/docker-web"

RUN export DEBIAN_FRONTEND=noninteractive \
&& apt-get update \
&& apt-get install -y --no-install-recommends wget curl apt-utils ca-certificates apt-transport-https gnupg\
&& mkdir -p /usr/share/man/man1 \
&& wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
&& wget -qO- https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
&& echo 'deb https://deb.nodesource.com/node_10.x stretch main' > /etc/apt/sources.list.d/nodesource.list \
&& echo "deb https://packages.sury.org/php/ stretch main" > /etc/apt/sources.list.d/php.list \
&& apt-get update \
&& apt-get install -y --no-install-recommends php7.2-cli git imagemagick inkscape python3-pip python3-setuptools openjdk-8-jre-headless nodejs \
&& pip3 --no-cache-dir install pjv html5validator \
&& npm i npm@latest -g \
&& npm install -g broken-link-checker-local \
&& apt-get autoremove -y \
&& apt-get clean \
&& rm -rf /usr/share/man/* \
&& npm cache clean --force

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer