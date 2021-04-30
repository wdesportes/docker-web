FROM alpine:3.13

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL author="William Desportes" \
    author.email="williamdes@wdes.fr" \
    author.website="https://william.wdes.fr" \
    vcs-url="https://github.com/williamdes/docker-web.git" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="Docker web tools by williamdes" \
    org.label-schema.description="Basic web tools like git, yarn, composer, ... in one image" \
    org.label-schema.url="https://github.com/williamdes/docker-web#readme" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/williamdes/docker-web.git" \
    org.label-schema.vendor="Williamdes" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"


RUN apk add --no-cache wget curl yarn gnupg py3-pip \
    php7 git imagemagick inkscape python3 openjdk8-jre-base composer && \
    pip install --upgrade pip && \
    pip --no-cache-dir install pjv html5validator && \
    yarn --cache-folder /tmp/.junk global add broken-link-checker-local && \
    echo 'Quality control' && \
    java -version && gpg --version && git --version && composer --version && \
    pjv -h && wget --version && curl --version && inkscape --version && \
    php --version && html5validator --version && blcl --version && magick --version && \
    yarn cache clean && \
    rm -rf /root/.cache /tmp/.junk /tmp/* /var/cache/fontconfig /share/.cache
