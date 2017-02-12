FROM alpine:3.5

RUN set -ex && \
  apk add --no-cache --update \
    nodejs && \
  npm i -g raml2html@4.1.1 && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["raml2html"]

CMD ["-h"]
