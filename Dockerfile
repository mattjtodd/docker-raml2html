FROM alpine:3.6

RUN apk add --no-cache --update nodejs-npm && \
    npm install -g raml2html@6.3.0 && \
    npm cache clean && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["raml2html"]

CMD ["-h"]
