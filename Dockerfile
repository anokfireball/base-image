FROM alpine:3.23.3@sha256:25109184c71bdad752c8312a8623239686a9a2071e8825f20acb8f2198c3f659

# renovate: datasource=repology depName=alpine_3_23/bash versioning=loose
ENV BASH_VERSION="5.2.37-r0"
# renovate: datasource=repology depName=alpine_3_23/curl versioning=loose
ENV CURL_VERSION="8.14.1-r2"
# renovate: datasource=repology depName=alpine_3_23/jq versioning=loose
ENV JQ_VERSION="1.8.1-r0"
# renovate: datasource=repology depName=alpine_3_23/kubectl versioning=loose
ENV KUBECTL_VERSION="1.34.2-r2"
# renovate: datasource=repology depName=alpine_3_23/openssl versioning=loose
ENV OPENSSL_VERSION="3.5.4-r0"

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
