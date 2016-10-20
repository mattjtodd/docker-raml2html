FROM alpine:3.4

RUN set -ex && \
  apk add --no-cache --update \
    nodejs && \
  npm install -g raml2html && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["raml2html"]

CMD ["-h"]
