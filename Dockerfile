FROM alpine:3.21.3@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c

# renovate: datasource=repology depName=alpine_3_21/bash versioning=loose
ENV BASH_VERSION="5.2.37-r0"
# renovate: datasource=repology depName=alpine_3_21/curl versioning=loose
ENV CURL_VERSION="8.12.1-r1"
# renovate: datasource=repology depName=alpine_3_21/jq versioning=loose
ENV JQ_VERSION="1.7.1-r0"
# renovate: datasource=repology depName=alpine_3_21/openssl versioning=loose
ENV OPENSSL_VERSION="3.3.3-r0"
# renovate: datasource=repology depName=alpine_3_21/kubectl versioning=loose
ENV KUBECTL_VERSION="1.31.5-r3"

RUN apk update \
     && apk upgrade \
     && apk add \
        bash="${BASH_VERSION}" \
        curl="${CURL_VERSION}" \
        jq="${JQ_VERSION}" \
        openssl="${OPENSSL_VERSION}" \
        kubectl="${KUBECTL_VERSION}" \
     && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
