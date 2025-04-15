FROM alpine:3.21.3@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c

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
