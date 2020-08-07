FROM alpine:3.12

LABEL maintainer="Matt Todd <matt.j.todd@gmail.com>"

ARG VERSION=7.6.0

RUN set -ex \
  && apk add --no-cache \
    nodejs-npm \
  && npm i -g raml2html@$VERSION \
  && npm cache clean --force

ENTRYPOINT ["raml2html"]

CMD ["-h"]

