FROM alpine:3.4

RUN set -ex && \
  apk add --no-cache --update -X http://liskamm.alpinelinux.uk/edge/community -X http://liskamm.alpinelinux.uk/edge/main \
    nodejs && \
  npm install -g raml2html && \
  rm -rf /var/cache/apk/*
i
ENTRYPOINT ["raml2html"]

CMD ["-h"]
