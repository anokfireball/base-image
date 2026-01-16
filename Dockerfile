FROM alpine:3.23.2@sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62

# renovate: datasource=repology depName=alpine_3_22/bash versioning=loose
ENV BASH_VERSION="5.2.37-r0"
# renovate: datasource=repology depName=alpine_3_22/curl versioning=loose
ENV CURL_VERSION="8.14.1-r2"
# renovate: datasource=repology depName=alpine_3_22/jq versioning=loose
ENV JQ_VERSION="1.8.1-r0"
# renovate: datasource=repology depName=alpine_3_22/kubectl versioning=loose
ENV KUBECTL_VERSION="1.33.1-r5"
# renovate: datasource=repology depName=alpine_3_22/openssl versioning=loose
ENV OPENSSL_VERSION="3.5.4-r0"

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
