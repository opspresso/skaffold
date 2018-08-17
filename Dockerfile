# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION 1
RUN curl -sLO https://storage.googleapis.com/skaffold/releases/${VERSION}/skaffold-linux-amd64 && \
    chmod +x skaffold-linux-amd64 && sudo mv skaffold-linux-amd64 /usr/local/bin/skaffold

ENTRYPOINT ["bash"]
