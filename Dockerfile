FROM alpine:3.8
ARG KUBECTL_VERSION=1.9.1
RUN apk add --update python python-dev py-pip build-base curl bash vim jq git openssl-dev libffi-dev gettext bind-tools
RUN curl -o /usr/local/bin/kubectl "https://storage.googleapis.com/kubernetes-release/release/v$KUBECTL_VERSION/bin/linux/amd64/kubectl" && \
    chmod +x /usr/local/bin/kubectl && \
    mkdir -p ~/.kube
COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh
ENTRYPOINT /tmp/entrypoint.sh
