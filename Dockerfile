FROM alpine:3.24.0@sha256:a2d49ea686c2adfe3c992e47dc3b5e7fa6e6b5055609400dc2acaeb241c829f4

# renovate: datasource=repology depName=alpine_3_24/bash versioning=loose
ENV BASH_VERSION="5.3.3-r1"
# renovate: datasource=repology depName=alpine_3_24/curl versioning=loose
ENV CURL_VERSION="8.19.0-r0"
# renovate: datasource=repology depName=alpine_3_24/jq versioning=loose
ENV JQ_VERSION="1.8.1-r0"
# renovate: datasource=repology depName=alpine_3_24/kubectl versioning=loose
ENV KUBECTL_VERSION="1.34.2-r6"
# renovate: datasource=repology depName=alpine_3_24/openssl versioning=loose
ENV OPENSSL_VERSION="3.5.6-r0"

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
