# docker-raml2html

## A simple containerized Raml2HTML

See [raml2html](https://github.com/raml2html).

Published to Docker Hub at [mattjtodd/raml2html](https://hub.docker.com/r/mattjtodd/raml2html/)

## Example

```
docker run --rm -v $PWD:/raml mattjtodd/raml2html -i /raml/instagram.raml -o /raml/instagram.raml.html
```

