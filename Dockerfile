FROM alpine:3.24.3@sha256:b3413572228e34bd1c9245f5565e6cd127005655e8a7899aef33d8e83255c9e6

# renovate: datasource=repology depName=alpine_3_24/bash versioning=loose
ENV BASH_VERSION="5.3.9-r1"
# renovate: datasource=repology depName=alpine_3_24/curl versioning=loose
ENV CURL_VERSION="8.22.0-r0"
# renovate: datasource=repology depName=alpine_3_24/jq versioning=loose
ENV JQ_VERSION="1.8.2-r0"
# renovate: datasource=repology depName=alpine_3_24/kubectl versioning=loose
ENV KUBECTL_VERSION="1.36.1-r2"
# renovate: datasource=repology depName=alpine_3_24/openssl versioning=loose
ENV OPENSSL_VERSION="3.5.9-r0"

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
