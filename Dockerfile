FROM alpine:3.11
LABEL author="William Desportes" \
    author.email="williamdes@wdes.fr" \
    author.website="https://william.wdes.fr" \
    vcs-url="https://github.com/williamdes/docker-web"

RUN apk add --no-cache wget curl yarn gnupg \
php7 git imagemagick inkscape python3 openjdk8-jre-base composer && \
pip3 install --upgrade pip && \
pip3 --no-cache-dir install pjv html5validator && \
yarn global add broken-link-checker-local
