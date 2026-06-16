FROM alpine:3.24.1@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b

# renovate: datasource=repology depName=alpine_3_24/bash versioning=loose
ENV BASH_VERSION="5.3.9-r1"
# renovate: datasource=repology depName=alpine_3_24/curl versioning=loose
ENV CURL_VERSION="8.20.0-r1"
# renovate: datasource=repology depName=alpine_3_24/jq versioning=loose
ENV JQ_VERSION="1.8.1-r0"
# renovate: datasource=repology depName=alpine_3_24/kubectl versioning=loose
ENV KUBECTL_VERSION="1.36.1-r0"
# renovate: datasource=repology depName=alpine_3_24/openssl versioning=loose
ENV OPENSSL_VERSION="3.5.7-r0"

RUN apk update \
    && apk upgrade \
    && apk add \
        bash="${BASH_VERSION}" \
        curl="${CURL_VERSION}" \
        jq="${JQ_VERSION}" \
        kubectl="${KUBECTL_VERSION}" \
        openssl="${OPENSSL_VERSION}" \
    && apk del apk-tools \
    && rm -rf /etc/apk /lib/apk /usr/share/apk /var/cache/apk/* /tmp/* /var/tmp/* /root/.cache

CMD ["/bin/sh"]
