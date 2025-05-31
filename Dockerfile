FROM alpine:3.22.0@sha256:8a1f59ffb675680d47db6337b49d22281a139e9d709335b492be023728e11715

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
