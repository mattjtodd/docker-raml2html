FROM alpine:3.5

RUN set -ex \
  && apk update \
  && apk upgrade \
  && apk add --no-cache --update \
    nodejs=6.9.2-r1 \
  && npm i -g raml2html@5.0.0 \
  && npm cache clean \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["raml2html"]

CMD ["-h"]
