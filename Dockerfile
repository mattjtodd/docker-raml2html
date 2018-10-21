FROM alpine:3.8

ARG VERSION=7.1.0

RUN set -ex \
  && apk update \
  && apk upgrade \
  && apk add \
    nodejs-npm \
  && npm i -g raml2html@$VERSION \
  && npm cache clean --force \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["raml2html"]

CMD ["-h"]
