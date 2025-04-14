FROM alpine:3.21.3

RUN apk update && apk upgrade
RUN apk add bash curl jq openssl kubectl

RUN rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
