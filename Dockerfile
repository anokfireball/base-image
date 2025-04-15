FROM alpine:3.21.3

RUN apk update \
     && apk upgrade \
     && apk add \
        bash=5.2.37-r0 \
        curl=8.12.1-r1 \
        jq=1.7.1-r0 \
        openssl=3.3.3-r0 \
        kubectl=1.31.5-r2 \
     && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
