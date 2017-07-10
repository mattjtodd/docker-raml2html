FROM alpine:3.6

RUN set -ex \
  && apk update \
  && apk upgrade \
  && apk add \
    nodejs-npm \
  && npm i -g raml2html@6.3.0 \
  && npm cache clean \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["raml2html"]

CMD ["-h"]
