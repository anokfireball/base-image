FROM alpine:3.24.0@sha256:8ddefa941e689fc29abcdeb8dae3b3c6d139cc08ce9a52633931160701770685

# renovate: datasource=repology depName=alpine_3_23/bash versioning=loose
ENV BASH_VERSION="5.3.3-r1"
# renovate: datasource=repology depName=alpine_3_23/curl versioning=loose
ENV CURL_VERSION="8.19.0-r0"
# renovate: datasource=repology depName=alpine_3_23/jq versioning=loose
ENV JQ_VERSION="1.8.1-r0"
# renovate: datasource=repology depName=alpine_3_23/kubectl versioning=loose
ENV KUBECTL_VERSION="1.34.2-r6"
# renovate: datasource=repology depName=alpine_3_23/openssl versioning=loose
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
