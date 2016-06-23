FROM alpine:latest
MAINTAINER Sanyam Kapoor "1sanyamkapoor@gmail.com"

RUN apk add git git-lfs --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ &&\
  apk add python py-pip &&\
  pip install -U awscli
