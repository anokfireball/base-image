FROM alpine:3.22.0@sha256:8a1f59ffb675680d47db6337b49d22281a139e9d709335b492be023728e11715

# renovate: datasource=repology depName=alpine_3_22/bash versioning=loose
ENV BASH_VERSION="5.2.37-r0"
# renovate: datasource=repology depName=alpine_3_22/curl versioning=loose
ENV CURL_VERSION="8.14.1-r0"
# renovate: datasource=repology depName=alpine_3_22/jq versioning=loose
ENV JQ_VERSION="1.8.0-r0"
# renovate: datasource=repology depName=alpine_3_22/kubectl versioning=loose
ENV KUBECTL_VERSION="1.33.1-r0"
# renovate: datasource=repology depName=alpine_3_22/openssl versioning=loose
ENV OPENSSL_VERSION="3.5.0-r0"

RUN apk update \
     && apk upgrade \
     && apk add \
        bash="${BASH_VERSION}" \
        curl="${CURL_VERSION}" \
        jq="${JQ_VERSION}" \
        kubectl="${KUBECTL_VERSION}" \
        openssl="${OPENSSL_VERSION}" \
     && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
