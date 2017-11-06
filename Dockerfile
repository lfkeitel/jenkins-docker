FROM jenkins/jenkins:lts-alpine

USER root

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && apk add --update docker \
    && rm -rf /var/cache/apk/*

USER jenkins
